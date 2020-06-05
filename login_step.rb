require_relative 'plogin_page'
require 'test-unit'

Given(/^i go to site page$/) do
  @user = PLogin.new(@driver)
end

When(/^i click the login link$/) do
  @user.click_login
end

And(/^i enter (.*) and (.*) in Login$/) do |email, pass|
  @user.enter_mail(email)
  @user.enter_password(pass)
  @user.click_remember
end

And(/^i click login button$/) do
  @user.click_button
end

And(/^i verify the logout button$/) do
  assert(@user.valid_user.displayed?)
  sleep(10)
end

Then(/^user is signed in$/) do
  @user.logout_user
  @user.close
end

Then(/^user is not signed in$/) do
  assert(@user.invalid_user.text.include?('Invalid credentials'), 'Please verify your email first')
  sleep(10)
  @user.close
end
