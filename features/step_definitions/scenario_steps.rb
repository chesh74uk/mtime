When("a user selects Manage scenarios link") do
  click_link "Manage scenarios"
end

Then("show a list of Scenarios") do
  expect(page).to have_content("Scenario 1")
end

Given("a web browser is at the scenario page") do
  visit scenarios_path
end

When("a user selects the Add scenario button") do
    expect(page).to have_content("Manage scenarios")
    click_button "Add scenario"
end

When("completes the scenario form") do
  expect(page).to have_content("Add scenario")
  fill_in "scenario_scenario_name", :with => "Scenario 1"
  click_button "Create Scenario"
end

Then("a new scenario should be created") do
  expect(page).to have_content("Scenario 1")
end

Given("a scenario has been created") do
  FactoryBot.create(:scenario,
                    :scenario_name => "Scenario xxx")
end

When("a user selects edit scenario") do
  @scenario = Scenario.last
  find("a[href='#{edit_scenario_path(@scenario)}']").click
end

When("completes the edit scenario form") do
  fill_in "scenario_scenario_name", :with => "Scenario zzz"
  click_button "Update Scenario"
end

Then("the scenario should be edited") do
  expect(page).to have_content("Scenario zzz")
end

When("a user selects delete scenario") do
  @scenario = Scenario.last
  find("a[href='#{scenario_path(@scenario)}']").click
end

Then("the scenario should be deleted") do
  expect(page).to have_content("Scenario was successfully deleted.")
end