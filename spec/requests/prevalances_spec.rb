require 'rails_helper'

RSpec.describe "Prevalances", type: :request do
  describe "GET /prevalances" do
    it "works! (now write some real specs)" do
      get prevalances_path
      expect(response).to have_http_status(200)
    end
  end
end
