When("a user selects Manage tests link") do
  click_link "Manage tests"
end

Then("show a list of tests") do
  expect(page).to have_content("Customer 1 - Scenario A")
end

Given("a web browser is at the test page") do
  visit tests_path
end

Given("a customer and scenario have been created") do
  FactoryBot.create(:customer,
                    :customer_name => "Customer ABC")
  FactoryBot.create(:scenario,
                    :scenario_name => "Scenario 123")
end

When("a user selects the Add test button") do
  expect(page).to have_content("Manage tests")
    click_button "Add test"
end

When("completes the test form") do
  expect(page).to have_content("Add test")
  expect(page).to have_select('test_test_customer')
  page.select 'Customer ABC',  from: 'test_test_customer'
  page.select 'Scenario 123',  from: 'test_test_scenario'
  click_button "Create Test"
  
end

Then("a new test should be created") do
  expect(page).to have_content("Customer ABC - Scenario 123")
end

Given("a test has been created") do
  FactoryBot.create(:test,
                    test_customer: "Customer 123",
                    test_scenario: "Scenario ABC")
end

When("a user selects edit test") do
  @test = Test.last
  find("a[href='#{edit_test_path(@test)}']").click
end

When("completes the edit test form") do
  fill_in "test_test_customer", :with => "Customer zzz"
  fill_in "test_test_scenario", :with => "Scenario xxx"
  click_button "Update Test"
end

Then("the test should be edited") do
  expect(page).to have_content("Customer zzz - Scenario xxx")
end

When("a user selects delete test") do
  @test = Test.last
  find("a[href='#{test_path(@test)}']").click
end

Then("the test should be deleted") do
  expect(page).to have_content("Test was successfully deleted.")
end