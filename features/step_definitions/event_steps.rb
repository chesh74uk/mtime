When("a user selects Manage events link") do
  click_link "Manage events"
end

Then("show a list of events") do
  expect(page).to have_content("Event 1")
end

Given("a web browser is at the event page") do
  visit events_path
end

When("a user selects the Add event button") do
  expect(page).to have_content("Manage events")
  click_button "Add event"
end

When("completes the event form") do
  expect(page).to have_content("Add event")
  fill_in "event_event_name", :with => "Event 1"
  click_button "Create Event"
end

Then("a new event should be created") do
  expect(page).to have_content("Event 1")
end

Given("an event has been created") do
  FactoryBot.create(:event,
                    :event_name => "Event xxx")
end

When("a user selects edit event") do
  @event = Event.last
  find("a[href='#{edit_event_path(@event)}']").click
end

When("completes the edit event form") do
  fill_in "event_event_name", :with => "Event zzz"
  click_button "Update Event"
end

Then("the event should be edited") do
  expect(page).to have_content("Event zzz")
end

When("a user selects delete event") do
  @event = Event.last
  find("a[href='#{event_path(@event)}']").click
end

Then("the event should be deleted") do
  expect(page).to have_content("Event was successfully deleted.")
end