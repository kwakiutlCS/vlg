require 'spec_helper'
 
describe Stat do
  let(:user) {FactoryGirl.create(:user)}
  
  describe "initial conditions" do
    it "should have 0 str" do
      user.stat.str.should == 0
    end

    it "should have 0 con" do
      user.stat.con.should == 0
    end
    it "should have 0 int" do
      user.stat.int.should == 0
    end
    it "should have 0 dex" do
      user.stat.dex.should == 0
    end
    it "should have 0 cha" do
      user.stat.cha.should == 0
    end
    it "should have 100 health" do
      user.stat.health.should == 100
    end
    it "should have 30 hunger" do
      user.stat.hunger.should == 30
    end
    it "should have 50 moral" do
      user.stat.moral.should == 50
    end
    
  end
end
