# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::HomeController, type: :request do
  describe '#GET index' do
    subject(:request) { get api_home_index_path }

    context 'when valid request' do
      it do
        request
        expect(response.code).to eq '200'
      end
    end
  end
end
