require 'spec_helper'
include Devise::TestHelpers

describe Admin::FoodItemsController do
  let(:user) {FactoryGirl.create(:user)}
  let(:admin) {FactoryGirl.create(:admin)}

  context "as a standard user" do
    before do
      sign_in(:user, user)
    end

    actions = {get: "index", get: "show", get: "edit", get: "new", put: "update", post: "create", delete: "destroy"}

    actions.each do |method, action|
      it "#{action} should be redirected to homepage" do
      
        send(method, action, id: user.id)
        response.should redirect_to root_path
        flash[:alert].should == "You need to be an admin to access that"
      end
    end
    

  end
  
end
