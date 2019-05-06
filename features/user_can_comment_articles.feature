Feature: User can comment articles
    As a User
    In order to interact with other users
    I would like to be able to comment articles

    Background:
        Given the following user exists
            | email              | password |
            | carrosen@gmail.com | password |

        Given the following article exists
            | title       | content    |
            | Erik Lundin | Annie Lööf |

        When I visit the landing page
        And I click "Login" link
        And I fill in "Email" with "carrosen@gmail.com"
        And I fill in "Password" with "password"
        And I click "Log in" button
    
    Scenario:
        Then I should see "Articles"
        And I should see "Show"
        When I click "Show" link
        Then I should see "Add a comment:"
        When I fill in "Commenter" with "Carrosen"
        And I fill in "Email"  with "carrosen@gmail.com"
        And I fill in "Body" with "Awesome article"
        And I click "Create Comment" button
        Then I should see "Comments"

    Scenario:
        Then I should see "Articles"
        And I should see "Show"
        When I click "Show" link
        Then I should see "Add a comment:"
        When I fill in "Commenter" with "Carrosen"
        And I fill in "Body" with "Awesome article"
        And I click "Create Comment" button
        Then I should see "Comments"

    Scenario:
        Then I should see "Articles"
        And I should see "Show"
        When I click "Show" link
        Then I should see "Add a comment:"
        When I fill in "Commenter" with "Carrosen"
        And I fill in "Email"  with "carrosen@gmail"
        And I fill in "Body" with "Awesome article"
        And I click "Create Comment" button
        Then I should see ""

