require_relative 'plogin_page'

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

Then(/^user is signed in$/) do
  @user.search_result_present?
  @user.close
end

Then(/^user is not signed in$/) do
  @user.search_results
  @user.close
end
