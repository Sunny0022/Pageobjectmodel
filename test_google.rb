require 'selenium-webdriver'
require '../tests/googlepage'

@driver = Selenium::WebDriver.for(:firefox)
@driver.navigate.to ('https://www.google.com')
login = GooglePage.new(@driver)
login.fillinname('Ruby')
login.submit_form
sleep 5
login.quit
puts 'Successfully launched'






OUTPUT :

Successfully launched

Process finished with exit code 0
