require 'rails_helper'

RSpec.describe "ImportHousholds", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/import_houshold/index"
      expect(response).to have_http_status(:success)
    end
  end

end
