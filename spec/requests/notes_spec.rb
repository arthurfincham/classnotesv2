# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Notes', type: :request do
  describe 'before sign in GET /index' do
    it 'redirects client to sign_in' do
      get '/'
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
