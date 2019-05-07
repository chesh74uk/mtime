Feature: Customer
  
  In order to be able to manage a Customer
  As a User
  i should be able to manage my Customers
  
  Scenario: Show Customers
  Given a web browser is at the home page
  When a user selects a Customer link
  Then show a list of Customers
  