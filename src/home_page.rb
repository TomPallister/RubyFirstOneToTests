require '../src/page'
require '../src/login_page'

class HomePage < Page
  attr_reader :driver

  def initialize(driver, url)
    super(driver)
    @driver = driver
    @driver.navigate.to url
  end

  def click_log_in
    element = driver.find_element(:id, 'ember348')
    element.click
    return LoginPage.new(@driver)
  end
end