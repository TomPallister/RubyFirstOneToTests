require '../src/page'
require '../src/login_page'

class HomePage < Page

  def initialize(driver, url)
    super(driver)
    @driver.navigate.to url
  end

  def click_log_in
    @driver.find_element(:id, 'ember348').click
    return LoginPage.new(@driver)
  end
end