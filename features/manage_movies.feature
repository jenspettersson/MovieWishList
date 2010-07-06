Feature: Manage Movies
    In order to make a movie wish list
    As a member
    I want to create and manage movies

    Scenario: Movies List
        Given I have movies titled Spiderman, Memento
        When I go to the list of movies
        Then I should see "Spiderman"
        And I should see "Memento"

