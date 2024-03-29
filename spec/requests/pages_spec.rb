# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET /' do
    it 'returns http success' do
      get root_path
      expect(response).to have_http_status(:success)
    end

    it 'returns text' do
      get root_path
      expect(response.body).to include('Web scraper de notebooks')
    end
  end
end
