require 'spec_helper'

describe TipsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'calculate'" do
    it "returns http success" do
      get 'calculate'
      response.should be_success
    end
  end

end
