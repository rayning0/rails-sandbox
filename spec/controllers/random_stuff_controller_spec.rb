require 'spec_helper'

describe RandomStuffController do
  describe "GET text" do
    it "returns text formatted response" do
      get :text

      response.body.should == "simple text"
    end
  end

  describe "GET nothing" do

    it "returns nothing" do
      get "nothing"

      response.body.should == ""
    end
  end

  describe "get classified page" do
    it "should return a 401 without a token"
      get :classified

      assert_response(401)
    end

    it "should return a 200 with a token"
      get :classified, token: '123456'

      assert_response(200)
    end
  end
end
