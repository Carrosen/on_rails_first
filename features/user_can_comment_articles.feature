Feature: User can comment articles
    As a User
    In order to interact with other users
    I would like to be able to comment articles

    Background:
        Given the following user exists
            | email              | password |
            | carrosen@gmail.com | password |

        When I visit the landing page
        And I click "Login" link
        And I fill in "Email" with "carrosen@gmail.com"
        And I fill in "Password" with "password"
        And I click "Log in" butto
    
    Scenario:
        Then I should see "Articles"
        And I fill in "Comment" with "This was an awesome article"
        And I click "comment" button
        Then I should see "-----"
