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
      user.inventory.bread = 3
      user.eat("bread")
      user.inventory.bread.should == 2
    end

    it "should diminish hunger level" do
      FactoryGirl.create(:food_item, name: "bread", hunger: -15)
      user.inventory.bread = 1
      user.stat.hunger = 50
      user.eat("bread")
      user.stat.hunger.should == 35
    end

    it "should alter the moral level" do
      FactoryGirl.create(:food_item, name: "bread", moral: 15)
      user.inventory.bread = 1
      user.stat.moral = 50
      user.eat("bread")
      user.stat.moral.should == 65
    end

    it "should alter the CON level" do
      FactoryGirl.create(:food_item, name: "bread", con: 1)
      user.inventory.bread = 1
      user.stat.con = 50
      user.eat("bread")
      user.stat.con.should == 51
    end

    it "should alter the int level" do
      FactoryGirl.create(:food_item, name: "bread", int: 1)
      user.inventory.bread = 1
      user.stat.int = 50
      user.eat("bread")
      user.stat.int.should == 51
    end

    it "should alter the cha level" do
      FactoryGirl.create(:food_item, name: "bread", cha: 2)
      user.inventory.bread = 1
      user.stat.cha = 50
      user.eat("bread")
      user.stat.cha.should == 52
    end
  end
end
