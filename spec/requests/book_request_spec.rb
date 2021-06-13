require 'rails_helper'

RSpec.describe "Books", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/book/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/book/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/book/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/book/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
