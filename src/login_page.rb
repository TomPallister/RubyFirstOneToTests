require '../src/page'
require '../src/player_page'
require 'selenium-webdriver'

class LoginPage < Page

  def initialize(driver)
    super(driver)
    @wait.until { @driver.find_element(:id => 'username') }
  end

  def enter_username(username)
    @driver.find_element(:id, 'username').send_keys username
  end

  def enter_password(password)
    @driver.find_element(:id, 'password').send_keys password
  end

  def click_log_in
    @driver.find_element(:class, 'btn').click
    return PlayerPage.new(@driver)
  end

  def username
    return @driver.find_element(:id, 'username').text
  end

  def password
    return @driver.find_element(:id, 'password').text
  end
end