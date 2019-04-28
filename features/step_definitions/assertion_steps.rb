Then("I should see {string}") do |string|
    expect(page).to have_content string
end
  
Then("I should see {string} link") do |string|
    expect(page).to have_content string
end
  