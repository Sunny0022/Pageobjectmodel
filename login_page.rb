require 'page-object'
require 'selenium-webdriver'
class LoginPage
  include PageObject

  attr_accessor :driver

  def initialize(driver)
    @driver = driver
    @driver = Selenium::WebDriver.for :firefox
    @driver.get 'http://uday.domain4now.com/'
  end

  def click_login
    return @driver.find_element(:xpath, '/html/body/nav/div[2]/ul/li[2]/a').click
  end

  def enter_mail(mail)
    return @driver.find_element(:id, 'email').send_keys(mail)
  end

  def enter_password(passw)
    return @driver.find_element(:id, 'password').send_keys(passw)
  end

  def click_remember
    return @driver.find_element(:id, 'remember').click
  end

  def click_button
    return @driver.find_element(:xpath, '/html/body/div/div/div[1]/div/div/div[2]/form/div/div[2]/input').click
  end

  def search_result_present?
    puts 'Logged in' if @driver.find_element(:css, '#tag-autocomplete').displayed?
  end

  def close
    @driver.quit
  end
end
