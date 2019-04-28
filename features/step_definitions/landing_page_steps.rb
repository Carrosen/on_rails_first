Given("I visit the site") do
  visit root_path
end

When("I click {string} link") do |string|
  click_on string
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string} button") do |string|
  click_button('Sign up')
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

When("I visit the landing page") do
  visit root_path
end




# When("I visit the site") do
#     visit root_path
#   end
  
#   Then("I should see {string}") do |content|
#     expect(page).to have_content content
#   end

#   Given("the following articles exists") do |table|
#     table.hashes.each do |article|
#         Article.create!(article)
#     end
#   end

  # Given("I visit the {string} page") do |string|
  #   visit root_path
  # end
  
  # When("I click {string} link") do |string|
  #   expect(page).to have link_to "New Article"
  # end
  
  # When("I fill in {string} with {string}") do |string, string2|
  #   pending # Write code here that turns the phrase above into concrete actions
  # end
  
  # When("I click {string} button") do |string|
  #   pending # Write code here that turns the phrase above into concrete actions
  # end
  
  # Then("I should be on {string} page") do |string|
  #   pending # Write code here that turns the phrase above into concrete actions
  # end
  