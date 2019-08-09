# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::NewsfeedsController, type: :controller do
  let(:body) do
    JSON.parse(response.body)
  end

  describe '#index' do
    subject(:get_index) { get :index }

    let(:number_of_items) { 10 }
    let!(:items) { FactoryBot.create_list(:newsfeed, number_of_items) }

    it 'sends a successful response' do
      expect(get_index).to be_successful
    end

    it 'has a body with the right number of elements' do
      get_index
      expect(body.count).to eq items.count
    end

    context 'when there are no newsfeed items' do
      let(:number_of_items) { 0 }

      it 'has no elements in the response body' do
        get_index
        expect(body).to be_empty
      end
    end
  end

  describe '#show' do
    subject(:get_item) { get :show, params: params }

    let(:params) { { id: id } }
    let(:title) { 'title' }
    let(:content) { 'content' }

    let!(:id) do
      FactoryBot.create(:newsfeed, title: title, content: content)[:id]
    end

    it 'has a success response' do
      expect(get_item).to be_successful
    end

    it 'has the correct title in the response body' do
      get_item
      expect(body["title"]).to eq title
    end

    it 'has the correct content in the response body' do
      get_item
      expect(body["content"]).to eq content
    end

    context 'when requesting a newsfeed that does not exist' do
      let(:params) { { id: 'forty-two' } }

      it 'has an empty body' do
        get_item
        expect(response.body).to be_empty
      end

      it 'has a not_found response' do
        expect(get_item).to be_not_found
      end
    end
  end
end
