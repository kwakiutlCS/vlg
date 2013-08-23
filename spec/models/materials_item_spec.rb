require 'spec_helper'

describe MaterialsItem do
  let(:clay) {FactoryGirl.create(:materials_item, name: "clay")}

  it "should have a name" do
    clay.name = ""
    clay.should_not be_valid
  end

  it "should have a unique name" do
    clay.name = "clay"
    clay.save
    gold = FactoryGirl.create(:materials_item)
    gold.name = "clay"
    gold.should_not be_valid
  end

  it "should have a minimum length name of 3" do
    clay.name = "cl"
    clay.should_not be_valid
  end

  it "should have a positive mass" do
    clay.mass = 0
    clay.should_not be_valid
  end

  it "should have mass" do
    clay.mass = nil
    clay.should_not be_valid
  end
  
  describe ".decay_probability" do
    it "should be less or equal to 100" do
      clay.decay_probability = 101
      clay.should_not be_valid
    end
    it "should be greater or equal to 0" do
      clay.decay_probability = -1
      clay.should_not be_valid
    end
  end

  it "should have a function" do
    clay.function = ""
    clay.should_not be_valid
  end

  it "should have a quality" do
    clay.quality = nil
    clay.should_not be_valid
  end

  it "should have a numeric quality" do
    clay.quality = "great"
    clay.should_not be_valid
  end
    
  
end
