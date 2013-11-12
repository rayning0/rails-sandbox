require 'spec_helper'

describe VenuesController do
  describe "GET index" do
    it "renders the standard html index page" do
      get :index

      expect(response).to render_template("index")
    end

    it "renders the mobile index page" do
      get :index, mobile: true

      expect(response).to render_template("mobile_index")
    end

    it "redirects from #create to #show with a Success! flash message" do
      post "create"

      flash[:notice].should == "Success!"
    end
  end
end
