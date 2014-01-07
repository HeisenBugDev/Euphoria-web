def should_receive_status(code)

end

Given(/^it tries to add a stat$/) do
  pending
end

And(/^it does not specify a user$/) do
  pending
end

Then(/^it should receive status code (\d+)$/) do |code|
  should_receive_status(code)
end

And(/^the user does not exist$/) do
  pending
end

And(/^the user exists$/) do
  pending
end

And(/^the stat does not exist$/) do
  pending
end

Then(/^the stat should be added$/) do
  pending
end

And(/^the stats count should be incremented$/) do
  pending
end

And(/^the stat exists$/) do
  pending
end

Then(/^the stat's count should increment$/) do
  pending
end

Given(/^it requests an unsecured page$/) do
  visit root_path
end

 Given(/^it does not provide authentication$/) do
  pending
end

Given(/^it provides authentication$/) do
  pending
end

And(/^the page is secured$/) do
  pending
end