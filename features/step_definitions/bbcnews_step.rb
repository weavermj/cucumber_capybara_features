
Given(/^I visit the website$/) do
    visit "/"
end

When(/^I receive a post$/) do

end

Then(/^I see the post content$/) do
  expect(page).to have_content 'Hello world'
end

When(/^I receive (\d+) post$/) do |arg1|

end

Then(/^I see (\d+) posts$/) do |arg1|
  expect(page).to have_selector('li', count: 2)
end

When(/^I hover the box$/) do
  sleep 4
  page.find('.box').hover
  sleep 4
end

Then(/^I expect the change in color$/) do
  expect(page.find('#box').native.css_value('background-color')).to eq('rgba(255, 0, 0, 1)')
end

When(/^I resize the browser window to "(.*?)"$/) do |size|
  window = Capybara.current_session.driver.browser.manage.window
  window.resize_to(size, '600')
end

Then(/^I expect the following element to be visible "(.*?)"$/) do |element|
  page.find(element).should be_visible
end

Then(/^I expect the following element not to be visible "(.*?)"$/) do |element|
  page.all(element, :visible => true)
end