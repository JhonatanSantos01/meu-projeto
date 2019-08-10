require "capybara/cucumber"
require "selenium-webdriver"

Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Chrome::Service.driver_path=  "C:/git/meu-projeto/chromedriver.exe"
  Selenium::WebDriver::Remote::Capabilities.chrome
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do
    Capybara.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize 
end