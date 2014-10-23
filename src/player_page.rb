require '../src/page'
require 'selenium-webdriver'

class PlayerPage < Page
  attr_reader :driver

  def initialize(driver)
    super(driver)
    @driver = driver
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => 'ember450') }
  end
end