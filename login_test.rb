require_relative 'login_page'

@user = LoginPage.new(@driver)
@user.click_login
@user.enter_mail('aa@domain.com')
@user.enter_password('Aa123,./')
@user.click_remember
@user.click_button
@user.search_result_present?
@user.close
