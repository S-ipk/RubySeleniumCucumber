# features/step_definitions/login_steps.rb

Given("I am on the login page") do
  # Add code here to navigate to the login page
  # For example:
  # visit '/login'
  @driver.navigate.to 'https://magento.softwaretestingboard.com/'
  button = @driver.find_element(:xpath, "//div[@class='panel header']//a[contains(.,'Sign In')]")
  button.click
end

When("I enter {string} as my username") do |username|
  # Add code here to enter the username into the username field
  # For example:
  # fill_in 'Username', with: username
  username_field = @driver.find_element(:id, 'email')
  username_field.send_keys(username)
end

When("I enter {string} as my password") do |password|
  # Add code here to enter the password into the password field
  # For example:
  # fill_in 'Password', with: password
  password_field = @driver.find_element(:id, 'pass')
  password_field.send_keys(password)
end

When("I click the {string} button") do |button_text|
  # Add code here to click on the login button
  # For example:
  # click_button button_text
  button = @driver.find_element(:xpath, "//button[@class='action login primary']/span[.='Sign In']")
  button.click
end

Then("I should be redirected to the dashboard page") do
  # Add code here to verify that the user is redirected to the dashboard page
  # For example:
  # expect(page).to have_current_path('/dashboard')
end

Then("I should see a welcome message") do
  # Add code here to verify that a welcome message is displayed
  # For example:
  # expect(page).to have_content('Welcome, username!')
end

Then("I should see an error message") do
  # Add code here to verify that an error message is displayed
  # For example:
  # expect(page).to have_content('Invalid username or password')
end

Then("I should stay on the login page") do
  # Add code here to verify that the user remains on the login page
  # For example:
  # expect(page).to have_current_path('/login')
end
