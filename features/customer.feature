Feature: Customer
  
  In order to be able to manage a Customer
  As a User
  i should be able to manage my Customers
  
  Scenario: Show Customers
    Given a web browser is at the home page
    When a user selects Manage customers link
    Then show a list of Customers
  
  Scenario: Create Customers
    Given a web browser is at the customer page
    When a user selects the Add customer button
    And completes the form
    Then a new customer should be created
  
  Scenario: Edit Customers
    Given a customer has been created 
    And a web browser is at the customer page
    When a user selects edit customer
    And completes the edit customer form
    Then the customer should be edited
  
  Scenario: Delete Customers
    Given a customer has been created 
    And a web browser is at the customer page
    When a user selects delete customer
    Then the customer should be deleted