# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::GreetingsController, type: :request do
  describe '#index' do
    it 'responds with 200 OK' do
      get api_greetings_path
      expect(response.status).to eq(200)
    end

    it 'returns the an object with a field of string "hello!"' do
      get api_greetings_path
      expect(response.body).to eq({ hello: 'hello!' }.to_json)
    end
  end
end
