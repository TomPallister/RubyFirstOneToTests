require '../src/page'
require '../src/player_page'
require 'selenium-webdriver'


class LoginPage < Page
  attr_reader :driver

  def initialize(driver)
    super(driver)
    @driver = driver
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => 'username') }
  end

  def enter_username(username)
    element = driver.find_element(:id, 'username')
    element.send_keys username
  end

  def enter_password(password)
    element = driver.find_element(:id, 'password')
    element.send_keys password
  end

  def click_log_in
    element = driver.find_element(:class, 'btn')
    element.click
    return PlayerPage.new(driver)
  end

  def username
    element =  driver.find_element(:id, 'username')
    return element.text
  end

  def password
    element = driver.find_element(:id, 'password')
    return element.text
  end
end