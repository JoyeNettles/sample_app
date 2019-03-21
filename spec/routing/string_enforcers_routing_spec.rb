require "rails_helper"

RSpec.describe StringEnforcersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/string_enforcers").to route_to("string_enforcers#index")
    end

    it "routes to #new" do
      expect(:get => "/string_enforcers/new").to route_to("string_enforcers#new")
    end

    it "routes to #show" do
      expect(:get => "/string_enforcers/1").to route_to("string_enforcers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/string_enforcers/1/edit").to route_to("string_enforcers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/string_enforcers").to route_to("string_enforcers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/string_enforcers/1").to route_to("string_enforcers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/string_enforcers/1").to route_to("string_enforcers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/string_enforcers/1").to route_to("string_enforcers#destroy", :id => "1")
    end
  end
end
