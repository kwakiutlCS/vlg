Given(/^there is a weapons item named "(.*?)"$/) do |arg1|
  weapon = FactoryGirl.create(:weapons_item, name: "#{arg1}")
  end
