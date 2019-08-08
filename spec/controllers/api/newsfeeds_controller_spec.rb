# frozen_string_literal: true

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::NewsfeedsController, type: :controller do
  let(:body) do
    JSON.parse(response.body)
  end
  describe '#index' do
    subject { get :index }
    let(:number_of_items) { 10 }

    before do
      FactoryBot.create_list(:newsfeed, number_of_items)
      subject
    end

    it 'has a body with the right number of elements' do
      expect(body.length).to eq(number_of_items)
    end

    it 'sends a successful response' do
      assert_response :success
    end

    context 'when there are no newsfeed items' do
      let(:number_of_items) { 0 }

      it 'has no elements in the response body' do
        expect(body).to be_empty
      end
    end
  end

  describe '#show' do
    subject { get :show, params: params }
    let(:params) { { id: id } }
    let(:title) { 'title' }
    let(:content) { 'content' }

    let!(:id) do
      FactoryBot.create(:newsfeed, title: title, content: content)[:id]
    end

    before do
      subject
    end

    it 'has the correct title in the response body' do
      expect(body["title"]).to eq(title)
    end

    it 'has the correct content in the response body' do
      expect(body["content"]).to eq(content)
    end

    it 'has a response of success' do
      assert_response :success
    end

    context 'when requesting a newsfeed that does not exist' do
      let(:params) { { id: id.to_i + 1 } }
      it 'has an empty body' do
        expect(body).to be_nil
      end

      it 'has a response of missing' do
        assert_response :missing
      end
    end
  end
end
