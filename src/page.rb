class Page
  attr_reader :driver

  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  end
end




