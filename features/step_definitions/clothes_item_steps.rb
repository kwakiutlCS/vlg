Given(/^there is a clothes item "(.*?)"$/) do |arg1|
  cloth = FactoryGirl.create(:clothes_item, name: arg1)
end
