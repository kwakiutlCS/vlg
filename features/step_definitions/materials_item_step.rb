Given(/^there is a materials item named "(.*?)"$/) do |arg1|
  FactoryGirl.create(:materials_item, name: arg1)
end
