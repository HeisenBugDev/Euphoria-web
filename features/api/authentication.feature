Feature: API Authentication
  Scenario: Unsecured page
    Given it requests an unsecured page
    Then it should receive status code 200
  Scenario: No authentication provided
    Given it does not provide authentication
    And the page is secured
    Then it should receive status code 401
  Scenario: Authentication provided
    Given it provides authentication
    And the page is secured
    Then it should receive status code 200