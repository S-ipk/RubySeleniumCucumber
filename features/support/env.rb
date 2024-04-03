require 'selenium-webdriver'

# Configure Selenium WebDriver
Before do
  @driver = Selenium::WebDriver.for :chrome
end

After do
  @driver.quit
end
