require 'rails_helper'

RSpec.describe "StringEnforcers", type: :request do
  describe "GET /string_enforcers" do
    it "works! (now write some real specs)" do
      get string_enforcers_path
      expect(response).to have_http_status(200)
    end
  end
end
