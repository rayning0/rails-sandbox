require 'spec_helper'

describe RandomStuffController do
  describe "GET text" do
    it "returns text formatted response" do
      get :text

      reponse.body.should == "simple text"
    end
  end
end
