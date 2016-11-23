require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #Over_ons" do
    it "returns http success" do
      get :over_ons
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #Contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end

end
