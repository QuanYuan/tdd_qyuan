require 'spec_helper'

describe ShowsController do

  describe "#index" do
    it "should be successful" do
      get :index

      response.should be_success
    end
  end

end