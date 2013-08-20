Given(/^there is a food item named "(.*?)"$/) do |arg1|
  item = FactoryGirl.create(:food_item)
  item.name = arg1
  item.save
end
