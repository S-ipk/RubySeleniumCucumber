class LoginPage
  def initialize(driver)
    @driver = driver
  end

  def sign_button
    @driver.find_element(:xpath, "//div[@class='panel header']//a[contains(.,'Sign In')]")
  end

  def username_field
    @driver.find_element(:id, 'email')
  end

  def password_field
    @driver.find_element(:id, 'pass')
  end

  def login_button
    @driver.find_element(:xpath, "//button[@class='action login primary']/span[.='Sign In']")
  end

  def welcome_message
    @driver.find_element(:xpath, "//span[@class='logged-in' and contains(text(), 'Welcome, Test First!')]")
  end

  def error_message
    @driver.find_element(:xpath, "//div[@class='message-error error message']/div[contains(.,'The account sign-in was incorrect or your account is disabled temporarily. Pleas')]")
  end

  def login(username, password)
    username_field.send_keys(username)
    password_field.send_keys(password)
    login_button.click
    #DashboardPage.new(@driver)
  end
end

