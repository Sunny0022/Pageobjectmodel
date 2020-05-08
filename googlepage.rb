require 'selenium-webdriver'
require 'page-object'
class GooglePage
  include PageObject

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def fillinname(name)
    return @driver.find_element(name: 'q').send_keys(name)
  end

  def submit_form
    return @driver.action.send_keys(:enter).perform
  end

  def quit
    @driver.quit
  end
end
