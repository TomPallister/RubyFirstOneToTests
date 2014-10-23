require '../src/page'
require 'selenium-webdriver'

class PlayerPage < Page

  def initialize(driver)
    super(driver)
    @wait.until { @driver.find_element(:id => 'ember450') }
  end
end