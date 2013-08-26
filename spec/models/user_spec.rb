require 'spec_helper'
include Devise::TestHelpers

describe User do
  let(:user) {FactoryGirl.create(:user, name:"palerma", email: "k@k.pt")}
  
  

  it "should have a name" do
    user.name = ""
    user.should_not be_valid
  end
  
  it "should have an email" do 
    user.email = ""
    user.should_not be_valid
  end
    
  it {should_not be_admin}

  it "should have a unique name" do
    user.save
    other = User.new(name: "palerma", password: "123456", email:"k2@k.pt")
    other.should_not be_valid
  end

  it "should have a unique email" do
    user.save
    other = User.new(name: "palerma2", password: "123456", email:"k@k.pt")
    other.should_not be_valid
  end


  it {should respond_to(:stat)}

  it {should respond_to(:inventory)}

  describe "eating" do
    it "should decrease the object quantity" do
      user.inventory.should_receive(:remove).with("bread", 1).and_return(2)
      user.inventory.bread = 3
      user.eat(:bread)
      user.inventory.bread.should == 2
    end
  end
end
