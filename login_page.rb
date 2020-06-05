# frozen_string_literal: true
require 'page-object'
require 'selenium-webdriver'
require 'rubygems'
require 'cucumber'

class PLogin
  include PageObject

  attr_accessor :driver

  def initialize(driver)
    @driver = driver
    @driver = Selenium::WebDriver.for :firefox
    @driver.get 'http://uday.domain4now.com/'

  end


  def click_login
    @driver.find_element(:xpath, '/html/body/div/nav/div[3]/ul/li[2]/a').click
  end

  def enter_mail(mail)
    @driver.find_element(:id, 'email').send_keys(mail)
  end

  def enter_password(passw)
    @driver.find_element(:id, 'password').send_keys(passw)
  end

  def click_remember
    @driver.find_element(:id, 'remember').click
  end

  def click_button
    @driver.find_element(:xpath, '/html/body/div/div/div/div[1]/div/div/div[2]/form/div/div[2]/input').click
  end

  def valid_user
    @driver.find_element(:xpath, '/html/body/div[1]/nav/div[3]/ul/li[4]/a')
  end

  def logout_user
    @driver.find_element(:xpath, '/html/body/div[1]/nav/div[3]/ul/li[4]/a').click
    sleep(2)
    @driver.switch_to.alert.accept
  end

  def invalid_user
    @driver.find_element(:css, 'div.container:nth-child(1)')
  end

  def close
    @driver.quit
  end
end
