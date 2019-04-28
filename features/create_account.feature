  
  Feature: User can create account
    As a User
    In order to access articles
    I would like to be able to create account

    Background:
      Given I visit the site
      When I click "Sign up" link

    Scenario: Successfully create an account [Happy Path]
      When I fill in "Email" with "carrosen@gmail.com"
      And I fill in "Password" with "password"
      And I fill in "Password confirmation" with "password"
      And I click "Sign up" button
    # Then I should see "Log out"
    # last one should change to articles, dont know how to do that... yet.


    
    