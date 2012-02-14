require "spec_helper"

describe GallionsController do
  describe "routing" do

    it "routes to #index" do
      get("/gallions").should route_to("gallions#index")
    end

    it "routes to #new" do
      get("/gallions/new").should route_to("gallions#new")
    end

    it "routes to #show" do
      get("/gallions/1").should route_to("gallions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gallions/1/edit").should route_to("gallions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gallions").should route_to("gallions#create")
    end

    it "routes to #update" do
      put("/gallions/1").should route_to("gallions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gallions/1").should route_to("gallions#destroy", :id => "1")
    end

  end
end
