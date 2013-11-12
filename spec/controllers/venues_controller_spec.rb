require 'spec_helper'

describe VenuesController do
  describe "GET index" do
    it "assigns @teams" do
      get :index, mobile: true

      expect(response).to render_template("mobile_index")
    end
  end
end
