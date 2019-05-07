Given("a web browser is at the home page") do
  visit root_path
end

When("a user selects Manage customers link") do
  click_link "Manage customers"
end

Then("show a list of Customers") do
  FactoryBot.create(:customer,
                    :customer_name => "Customer 1")
  expect(page).to have_content("Customer 1")
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


