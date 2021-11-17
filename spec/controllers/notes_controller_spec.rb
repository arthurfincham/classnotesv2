require 'rails_helper'

RSpec.describe NotesController, type: :controller do

  before do
    sign_in FactoryBot.create(:user)
  end

  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  context "GET #new" do
    it "assigns a blank note to the view" do
      get :new
      expect(assigns(:note)).to be_a_new(Note)
    end
  end
end