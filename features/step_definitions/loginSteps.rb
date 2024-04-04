# login_steps.rb
require 'selenium-webdriver'
require_relative '../pageObjects/loginPage'
#require_relative '../pages/dashboard_page'

Given("I am on the login page") do
  @login_page = LoginPage.new(@driver)
  @driver.navigate.to 'https://magento.softwaretestingboard.com/'
  @login_page.sign_button.click
end

When("I enter {string} as my username") do |username|
  @login_page.username_field.send_keys(username)
end

When("I enter {string} as my password") do |password|
  @login_page.password_field.send_keys(password)
end

When("I click the {string} button") do |button_text|
    @login_page.login_button.click

end

Then("I should see a welcome message") do
  @driver.manage.timeouts.implicit_wait = 10 # seconds
  # Verify that the welcome message element is present
  expect(@login_page.welcome_message).to be_truthy
  # Verify that the welcome message text matches the expected text
  expect(@login_page.welcome_message.text).to eq('Welcome, Test First!')
end

Then("I should see an error message") do
  @driver.manage.timeouts.implicit_wait = 10 # seconds
  expect(@login_page.error_message.text).to eq('The account sign-in was incorrect or your account is disabled temporarily. Please wait and try again later.')
end

