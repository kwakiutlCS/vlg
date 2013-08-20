Given(/^there is a clothes item "(.*?)"$/) do |arg1|
  cloth = FactoryGirl.create(:clothes_item)
  cloth.name = arg1
  cloth.save
end
