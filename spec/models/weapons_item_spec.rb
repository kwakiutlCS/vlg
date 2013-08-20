require 'spec_helper'

describe WeaponsItem do
  let(:sword) {FactoryGirl.create(:weapons_item)}

  it "can't have a blank name" do
    sword.name = ""
    sword.should_not be_valid
  end

  it "should have a unique name" do
    sword.name = "sword"
    sword.save
    axe = FactoryGirl.create(:weapons_item)
    axe.name = "sword"
    axe.should_not be_valid
  end

  it "should have a skill" do
    sword.skill = ""
    sword.should_not be_valid
  end

  it "should have non negative quality" do
    sword.quality = -2
    sword.should_not be_valid
  end

  describe "it should have an hash for assemble" do
    it "when receiving a string" do
      sword.assemble = "{w: 3, ter: 4, g:53}"
      sword.save
      sword.assemble[:g].should == 53
    end
    it "when receiving an hash" do
      sword.assemble = {w: 3, ter: 4, g:53}
      sword.save
      sword.assemble[:g].should == 53
    end

    describe "it should have an hash for tools" do
      it "when receiving a string" do
        sword.tools = "{w: 3, ter: 4, g:53}"
        sword.save
        sword.tools[:g].should == 53
      end
      it "when receiving an hash" do
        sword.tools = {w: 3, ter: 4, g:53}
        sword.save
        sword.tools[:g].should == 53
      end
    end

    describe "it should have an hash for assemble_skills" do
      it "when receiving a string" do
        sword.assemble_skills = "{w: 3, ter: 4, g:53}"
        sword.save
        sword.assemble_skills[:g].should == 53
      end
      it "when receiving an hash" do
        sword.assemble_skills = {w: 3, ter: 4, g:53}
        sword.save
        sword.assemble_skills[:g].should == 53
      end
    end
  
  end
end
