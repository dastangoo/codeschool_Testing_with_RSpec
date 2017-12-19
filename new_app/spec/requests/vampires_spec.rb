require 'rails_helper'

RSpec.describe "Vampires", type: :request do
  describe "GET /vampires" do
    it "works! (now write some real specs)" do
      get vampires_path
      expect(response).to have_http_status(200)
    end
  end
end
