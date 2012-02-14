require "spec_helper"

describe CannonsController do
  describe "routing" do

    it "routes to #index" do
      get("/cannons").should route_to("cannons#index")
    end

    it "routes to #new" do
      get("/cannons/new").should route_to("cannons#new")
    end

    it "routes to #show" do
      get("/cannons/1").should route_to("cannons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cannons/1/edit").should route_to("cannons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cannons").should route_to("cannons#create")
    end

    it "routes to #update" do
      put("/cannons/1").should route_to("cannons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cannons/1").should route_to("cannons#destroy", :id => "1")
    end

  end
end
