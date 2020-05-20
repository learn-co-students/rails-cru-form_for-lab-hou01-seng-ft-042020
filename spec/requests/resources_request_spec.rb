require 'rails_helper'

RSpec.describe "Resources", type: :request do

  describe "GET /:artists" do
    it "returns http success" do
      get "/resources/:artists"
      expect(response).to have_http_status(:success)
    end
  end

end
