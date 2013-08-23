require 'spec_helper'

describe ToolsItem do
  let(:hammer){FactoryGirl.create(:tools_item)}

  it "should have a name" do
    hammer.name = ""
    hammer.should_not be_valid
  end

  it "should have a unique name" do
    nail = FactoryGirl.create(:tools_item, name: "palerma")
    hammer.name = "palerma"
    hammer.should_not be_valid
  end

  it "should have a length 3+ name" do
    hammer.name = "ha"
    hammer.should_not be_valid
  end

  it "should have a positive mass" do
    hammer.mass = 0
    hammer.should_not be_valid
  end

  it "should have a positive result" do
    hammer.result = 0
    hammer.should_not be_valid
  end

  describe "it should have an hash for assemble" do
    it "when receiving a string" do
      hammer.assemble = "{w: 3, ter: 4, g:53}"
      hammer.save
      hammer.assemble[:g].should == 53
    end
    it "when receiving an hash" do
      hammer.assemble = {w: 3, ter: 4, g:53}
      hammer.save
      hammer.assemble[:g].should == 53
    end

    describe "it should have an hash for tools" do
      it "when receiving a string" do
        hammer.tools = "{w: 3, ter: 4, g:53}"
        hammer.save
        hammer.tools[:g].should == 53
      end
      it "when receiving an hash" do
        hammer.tools = {w: 3, ter: 4, g:53}
        hammer.save
        hammer.tools[:g].should == 53
      end
    end

    describe "it should have an hash for assemble_skills" do
      it "when receiving a string" do
        hammer.assemble_skills = "{w: 3, ter: 4, g:53}"
        hammer.save
        hammer.assemble_skills[:g].should == 53
      end
      it "when receiving an hash" do
        hammer.assemble_skills = {w: 3, ter: 4, g:53}
        hammer.save
        hammer.assemble_skills[:g].should == 53
      end
    end
  
  end
end
