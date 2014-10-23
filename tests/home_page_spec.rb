require 'rspec'
require 'selenium-webdriver'
require '../src/page'
require '../src/home_page'
require '../src/login_page'
require '../src/player_page'

describe 'Authentication' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome, :switches => %w[--ignore-certificate-errors --disable-popup-blocking --disable-translate]
  end

  it 'should open home page' do
    HomePage.new(@driver, 'http://www.firstoneto.com')
    expect(@driver.title).to eq('First One To')
  end

  it 'can click log in' do
    home_page = HomePage.new(@driver, 'http://www.firstoneto.com')
    login_page = home_page.click_log_in
  end

  it 'can enter username and password' do
    home_page = HomePage.new(@driver, 'http://www.firstoneto.com')
    login_page = home_page.click_log_in
    login_page.enter_username 'test10'
    login_page.enter_password 'changeme12'
  end

  it 'can enter username, password and click log in' do
    home_page = HomePage.new(@driver, 'http://www.firstoneto.com')
    login_page = home_page.click_log_in
    login_page.enter_username 'test10'
    login_page.enter_password 'changeme12'
    login_page.click_log_in
  end

  after(:each) do
    @driver.quit
  end
end

