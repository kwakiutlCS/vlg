require 'spec_helper'

describe Inventory do
  let(:user) {User.create(name: "iasogh", email: "lasj@aghnj.pt", password: "123456")}

  it {should respond_to(:remove)}

  describe "removing items" do
    it "should not work with garbage" do
      lambda {user.inventory.remove("ertagsilg", 3)}.should raise_error
    end

    it "should not work with bread" do
      user.inventory.bread = 3
      user.inventory.remove("bread", 2)
      user.inventory.bread.should == 1
    end

    it "should not work with bread too many items" do
      user.inventory.bread = 3
      lambda {user.inventory.remove("bread", 4)}.should raise_error
      
    end
  end
    
end
