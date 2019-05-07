Feature: Scenario
  
  In order to bea ble to manage scenarios for customers
  As a user
  I need to manage scenarios
  
  Scenario: Show Scenarios
    Given a web browser is at the home page
    When a user selects Manage scenarios link
    Then show a list of Scenarios
    
  Scenario: Create Scenario
    Given a web browser is at the scenario page
    When a user selects the Add scenario button
    And completes the scenario form
    Then a new scenario should be created
    
  Scenario: Edit Scenario
    Given a scenario has been created 
    And a web browser is at the scenario page
    When a user selects edit scenario
    And completes the edit scenario form
    Then the scenario should be edited
  
  Scenario: Delete Scenario
    Given a scenario has been created 
    And a web browser is at the scenario page
    When a user selects delete scenario
    Then the scenario should be deleted