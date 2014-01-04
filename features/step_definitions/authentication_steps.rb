Given(/^a user visits the login page$/) do
  visit new_user_session_path
end

When(/^he submits invalid login information$/) do
  click_button 'Login'
end

Then(/^he should see a warning message$/) do
  expect(page).to have_selector('div.ui.message.warning')
end

Given(/^the user has an account$/) do
  @user = User.new({ :email                 => "user@example.com",
                     :password              => 'foobarbatman',
                     :password_confirmation => 'foobarbatman',
                     :username              => 'user' })
  @user.skip_confirmation!
  @user.save!
end

When(/^the user submits valid login information$/) do
  fill_in "user_login", with: @user.email
  fill_in "user_password", with: @user.password
  click_button "Login"
end

Then(/^he should see a success message$/) do
  expect(page).to have_selector('div.ui.message.info')
end

Then(/^he should see a signout link$/) do
  expect(page).to have_link('Logout', href: destroy_user_session_path)
end

When(/^a user visits the signup page$/) do
  visit new_user_registration_path
end

And(/^submits invalid signup information$/) do
  click_button "Sign up"
end

And(/^submits valid signup information$/) do
  fill_in "user_username", with: "foobar"
  fill_in "user_email", with: "foobar@example.com"
  fill_in "user_password", with: "password"
  fill_in "user_password_confirmation", with: "password"
  click_button "Sign up"
end

Then(/^he should see an error message$/) do
  expect(page).to have_selector('div.ui.message.error')
end

And(/^he should have an email$/) do
  mailbox_for("foobar@example.com").size.should == 1
end


Then(/^he opens that email$/) do
  open_email("foobar@example.com")
end

And(/^he clicks on the first link$/) do
  click_first_link_in_email
end