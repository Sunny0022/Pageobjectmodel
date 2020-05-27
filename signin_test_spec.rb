require_relative 'signin_page_object'
require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.get 'http://uday.domain4now.com/'
login_page = LoginPageObject.new(browser)
login_page.loginlink
login_page.username = 'aa@domain.com'
login_page.userpassword = 'Aa123,./'
# login_page.check
login_page.loginbutton
sleep 2
login_page.signout
sleep 2
browser.switch_to.alert.accept
sleep 2
browser.quit
