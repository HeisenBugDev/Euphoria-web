Feature: API Authentication
  Scenario: Unsecured page
    Given It requests an unsecured page
    Then It should receive a success message
  Scenario: No authentication provided
    Given It does not provide authentication
    And The page is secured
    Then It should receive an unauthorized response
  Scenario: Authentication provided
    Given It provides authentication
    And The page is secured
    Then It should receive a success message