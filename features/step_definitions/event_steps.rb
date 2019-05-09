Given("a test is created") do
  FactoryBot.create(:test,
                    test_customer: "Customer 123",
                    test_scenario: "Scenario ABC")
end

Given("a web browser is at the test details page") do
  @test = Test.first
  visit test_path(@test)
end

When("a user selects the Add event button") do
  click_button "Add event"
end

When("completes the event form") do
  expect(page).to have_content("Add event")
  fill_in "event_event_date", with: "01/04/2019"
  fill_in "event_event_name", with: "Event 1"
  click_button "Create Event"
end

Then("a new event should be created") do
  expect(page).to have_content("Event 1")
end

Given("a test with event is created") do

end

When("a user selects the edit link") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("updates the event") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the event should be updated") do
  pending # Write code here that turns the phrase above into concrete actions
end