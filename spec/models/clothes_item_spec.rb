require 'spec_helper'

describe ClothesItem do
  let(:shirt) {FactoryGirl.create(:clothes_item)}

  it "should have a name" do
    shirt.name = ""
    shirt.should_not be_valid
  end

  it "should have a positive mass" do
    shirt.mass = 0
    shirt.should_not be_valid
  end

  it "should have a unique name" do
    shirt.name = "shirt"
    shirt.save
    trousers = FactoryGirl.create(:clothes_item)
    trousers.name = "shirt"
    trousers.should_not be_valid
    
  end

  it "should have decay_days positive" do
    shirt.decay_days = -2
    shirt.should_not be_valid
  end

  it "should have quality positive" do
    shirt.quality = -2
    shirt.should_not be_valid
  end

  it "should have result positive" do
    shirt.result = 0
    shirt.should_not be_valid
  end


  it "should have an hash for assemble receiving a string" do
    shirt.assemble = "{linen: 3, wool: 3}"
    shirt.save
    shirt.assemble[:wool].should == 3
  end

  it "should have an hash for assemble receiving an hash" do
    shirt.assemble = {linen: 3, wool: 3}
    shirt.save
    shirt.assemble[:wool].should == 3
  end


  
end
