Feature: Test
  
  In order to be able to test a customer and stage
  As a User
  I should be able to manage tests
  
  Scenario: Show Tests
    Given a web browser is at the home page
    When a user selects Manage tests link
    Then show a list of tests
    
  Scenario: Create Test
    Given a customer and scenario have been created
    And a web browser is at the test page
    When a user selects the Add test button
    And completes the test form
    Then a new test should be created

  Scenario: Edit Test
      Given a test has been created 
      And a web browser is at the test page
      When a user selects edit test
      And completes the edit test form
      Then the test should be edited
      
  Scenario: Delete Test
      Given a test has been created 
      And a web browser is at the test page
      When a user selects delete test
      Then the test should be deleted