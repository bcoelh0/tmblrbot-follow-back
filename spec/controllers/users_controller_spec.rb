require 'spec_helper'


describe UsersController do

  before do
    OmniAuth.config.mock_auth[:tumblr] = {
        'uid' => 'tmblrb',
        'info' => {
          'name' => 'Tmblr Bot'
        }
      }
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:tumblr]
  end


  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'check'" do
    it "returns http success" do
      get 'check'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

end
