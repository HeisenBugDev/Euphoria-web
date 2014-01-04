Feature: Signing up
  Scenario: Bad parameters
    When a user visits the signup page
    And submits invalid signup information
    Then he should see an error message
  Scenario: Good parameters
    When a user visits the signup page
    And submits valid signup information
    Then he should see a success message
