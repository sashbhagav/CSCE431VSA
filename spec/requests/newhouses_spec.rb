require 'rails_helper'

RSpec.describe "Newhouses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/newhouses/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/newhouses/new"
      expect(response).to have_http_status(:success)
    end
  end

end
