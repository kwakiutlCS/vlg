require 'spec_helper'

describe FoodItem do
  
  let(:bread) {FactoryGirl.create(:food_item)}

  it "should have a positive mass" do
    bread.mass = 0
    bread.should_not be_valid
  end

  it "should have a unique name" do
    bread.name = "bread"
    bread.save
    another_bread = FactoryGirl.create(:food_item)
    another_bread.name ="bread"
    another_bread.should_not be_valid
  end

  it "is invalid with decay_probability > 100" do
    bread.decay_probability = 101
    bread.should_not be_valid
  end

  it "is invalid with decay_probability < 0 " do
    bread.decay_probability = -1
    bread.should_not be_valid
  end

  it "should have a negative hunger" do
    bread.hunger = 2
    bread.should_not be_valid
  end

end
