require "rails_helper"

RSpec.describe VampiresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vampires").to route_to("vampires#index")
    end

    it "routes to #new" do
      expect(:get => "/vampires/new").to route_to("vampires#new")
    end

    it "routes to #show" do
      expect(:get => "/vampires/1").to route_to("vampires#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vampires/1/edit").to route_to("vampires#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vampires").to route_to("vampires#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vampires/1").to route_to("vampires#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vampires/1").to route_to("vampires#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vampires/1").to route_to("vampires#destroy", :id => "1")
    end

  end
end
