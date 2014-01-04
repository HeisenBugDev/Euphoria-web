Feature: Logging in

  Scenario: Unsuccessful login
    Given a user visits the login page
    When he submits invalid login information
    Then he should see a warning message

  Scenario: Successful login
    Given a user visits the login page
    And the user has an account
    When the user submits valid login information
    Then he should see a success message
    And he should see a signout link