require 'selenium-webdriver'

class GooglePage
  
  attr_reader :driver
  
  def initialize(driver)
    @driver = driver
  end

  def fillinname(name)
    return @driver.find_element(name: 'q').send_keys(name)
  end

  def submit_form
    return @driver.find_element(name: 'btnK').click
  end
  
  def quit
    @driver.quit
  end
end
