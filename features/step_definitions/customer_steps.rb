Given("a web browser is at the home page") do
  FactoryBot.create(:customer,
                    :customer_name => "Customer zzz")
  FactoryBot.create(:scenario,
                    :scenario_name => "Scenario 1")
  FactoryBot.create(:event,
                    :event_name => "Event 1")
  FactoryBot.create(:test,
                    :test_customer => "Customer 1",
                    :test_scenario => "Scenario A")
  visit root_path
end

When("a user selects Manage customers link") do
  click_link "Manage customers"
end

Then("show a list of Customers") do
  expect(page).to have_content("Customer zzz")
end

Given("a web browser is at the customer page") do
  visit customers_path
end

When("a user selects the Add customer button") do
  click_button "Add customer"
end

When("completes the form") do
  expect(page).to have_content("Add customer")
  fill_in "customer_customer_name", :with => "Customer 1"
  click_button "Create Customer"
end

Then("a new customer should be created") do
  expect(page).to have_content("Customer 1")
end

Given("a customer has been created") do
  FactoryBot.create(:customer,
                    :customer_name => "Customer xxx")
end

When("a user selects edit customer") do
  @customer = Customer.last
  find("a[href='#{edit_customer_path(@customer)}']").click
end

When("completes the edit customer form") do
  fill_in "customer_customer_name", :with => "Customer ABC"
  click_button "Update Customer"
end

Then("the customer should be edited") do
  expect(page).to have_content("Customer ABC")
end

When("a user selects delete customer") do
  @customer = Customer.last
  find("a[href='#{customer_path(@customer)}']").click
end

Then("the customer should be deleted") do
  expect(page).to have_content("Customer was successfully deleted.")
end
