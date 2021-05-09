require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /top" do
    it "returns http success" do
      get "/posts/top"
      expect(response).to have_http_status(:success)
    end
  end

end
