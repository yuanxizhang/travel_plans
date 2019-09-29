require 'rails_helper'

RSpec.describe 'Travel Plans API', type: :request do
  # initialize test data 
  let!(:providers) { create_list(:provider, 10) }
  let(:provider_id) { providers.first.id }

  # Test suite for GET /api/v1/providers
  describe 'GET /api/v1/providers' do
    # make HTTP get request before each example
    before { get '/api/v1/providers' }

    it 'returns providers' do    
      result = JSON.parse(response.body)
      expect(result.length).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /api/v1/providers/:id
  describe 'GET /api/v1/providers/:id' do
    before { get "/api/v1/providers/#{provider_id}" }

    context 'when the record exists' do
      it 'returns the provider' do
        result = JSON.parse(response.body)
        expect(result['id']).to eq(provider_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:provider_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Provider with 'id'=100/)
      end
    end
  end

end
