Feature: User can log in
    As a User
    In order to use the application
    I would like to be able to log in

    Scenario: User can log in
        Given the following user exists
            | email              | password |
            | carrosen@gmail.com | password |

        When I visit the landing
            