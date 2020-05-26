require_relative 'login_page_object'
require 'selenium-webdriver'

browser = Selenium::WebDriver.for :firefox
browser.get 'http://uday.domain4now.com/'
login_page = LoginPageObject.new(browser)
login_page.loginlink
login_page.username = 'aa@domain.com'
login_page.userpassword = 'Aa123,./'
login_page.radioclick
login_page.loginbutton
login_page.signout
browser.switch_to.alert.accept
browser.quit
