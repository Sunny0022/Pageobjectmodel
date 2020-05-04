require 'selenium-webdriver'
require '../tests/googlepage'

@driver = Selenium::WebDriver.for(:firefox)
@driver.navigate.to ('https://www.google.com')
login = GooglePage.new(@driver)
login.fillinname('Ruby')
login.submit_form
login.quit
puts 'Successfully launched'
