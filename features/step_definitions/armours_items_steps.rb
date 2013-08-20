Given(/^there is a armours item named "(.*?)"$/) do |arg1|
  FactoryGirl.create(:armours_item, name: arg1)
end
