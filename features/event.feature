Feature: Event
  
  In order to be able to test
  As a User
  I should be able to add events
  
  Scenario: Create Event
    Given a test is created
    And a web browser is at the test details page
    When a user selects the Add event button
    And completes the event form
    Then a new event should be created
