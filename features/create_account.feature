  
  Feature: User can create account
    As a User
    In order to access articles
    I would like to be able to create account

    Background:
      Given I visit the site
      When I click "Signup" link

    Scenario: Successfully create an account [Happy Path]
      When I fill in "Email" with "carrosen@gmail.com"
      And I fill in "Password" with "password"
      And I fill in "Password confirmation" with "password"
      And I click "Sign up" button
      Then I should see "Logout" link

    Scenario: User can not select an email that has already been taken
      And I fill in "Email" with "ace@cat.se"
      And I fill in "Password" with "password"
      And I fill in "Password confirmation" with "password"
      And I click "Sign up" button
      And I click "Logout" link

      And I visit the landing page
      And I click "Signup" link
      And I fill in "Email" with "ace@cat.se"
      And I fill in "Password" with "password1"
      And I fill in "Password confirmation" with "password1"
      And I click "Sign up" button
      Then I should see "Email has already been taken"

    # Scenario: User can not select a name that has already been taken
    #   When I fill in "Name" with "Noel"
    #   And I fill in "Email" with "noel@craft.se"
    #   And I fill in "Password" with "password"
    #   And I fill in "Password confirmation" with "password"
    #   And I click "Create" button
    #   And I click "Logout" link
    #   And I visit the landing page
    #   And I click "Signup" link
    #   And I fill in "Name" with "Noel"
    #   And I fill in "Email" with "noelle@craft.se"
    #   And I fill in "Password" with "password1"
    #   And I fill in "Password confirmation" with "password1"
    #   And I click "Create" button
    #   Then I should see "Name has already been taken"