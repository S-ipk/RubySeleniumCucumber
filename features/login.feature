Feature: Login functionality
  As a user
  I want to be able to log in to my account
  So that I can access the system

  Background:
    Given I am on the login page

  Scenario: Successful login with valid credentials
    When I enter "testQA1@gmail.com" as my username
    And I enter "QATesting1!" as my password
    And I click the "Login" button
    Then I should be redirected to the dashboard page
    And I should see a welcome message

  Scenario: Login with invalid credentials
    When I enter "invalid_username" as my username
    And I enter "invalid_password" as my password
    And I click the "Sign In" button
    Then I should see an error message
    And I should stay on the login page
