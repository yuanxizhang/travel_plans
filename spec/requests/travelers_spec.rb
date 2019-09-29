require 'rails_helper'

RSpec.describe 'Travel Plans API', type: :request do
  # initialize test data 
  let!(:travelers) { create_list(:traveler, 10) }
  let(:traveler_id) { travelers.first.id }

  # Test suite for GET /api/v1/travelers
  describe 'GET /api/v1/travelers' do
    # make HTTP get request before each example
    before { get '/api/v1/travelers' }

    it 'returns travelers' do    
      result = JSON.parse(response.body)
      expect(result.length).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /api/v1/travelers/:id
  describe 'GET /api/v1/travelers/:id' do
    before { get "/api/v1/travelers/#{traveler_id}" }

    context 'when the record exists' do
      it 'returns the traveler' do
        result = JSON.parse(response.body)
        expect(result['id']).to eq(traveler_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:traveler_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Traveler with 'id'=100/)
      end
    end
  end

end