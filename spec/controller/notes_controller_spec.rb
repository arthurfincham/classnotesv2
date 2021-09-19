require "rails_helper"

RSpec.describe NotesController, :type => :controller do

  # simulates authentication with devise
  before do
    @user = User.create(email: 'spec@example.com', password: 'password')
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:current_user).and_return(@user)
  end

  describe "GET index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

end

