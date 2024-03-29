require 'spec_helper'

describe 'Try a request to swagger routes' do
  context 'info route' do
    it 'succesfully' do
      get '/swagger/info'

      parsed_response = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(parsed_response['environment']).to eq 'test'
      expect(parsed_response['version']).to eq '1.0.0'
    end

  context 'swagger route' do
    it 'succesfully' do
      visit rswag_ui_path

      expect(page).to have_content 'Virtual Machine API'
    end
  end
end