Feature: Signing up

  Scenario: Bad parameters
    When a user visits the signup page
    And submits invalid signup information
    Then he should see an error message

  Scenario: Good parameters
    When a user visits the signup page
    And submits valid signup information
    Then he should see a success message
    And he should have an email
    Then he opens that email
    And he clicks on the first link
    Then he should see a success message
