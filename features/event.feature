Feature: Event
  
  In order to be able to test
  As a User
  I should be able to add events
  
  Scenario: Show Events
    Given a web browser is at the home page
    When a user selects Manage events link
    Then show a list of events
    
  Scenario: Create Event
    Given a web browser is at the event page
    When a user selects the Add event button
    And completes the event form
    Then a new event should be created
    
  Scenario: Edit Event
    Given an event has been created 
    And a web browser is at the event page
    When a user selects edit event
    And completes the edit event form
    Then the event should be edited

Scenario: Delete Event
    Given an event has been created 
    And a web browser is at the event page
    When a user selects delete event
    Then the event should be deleted