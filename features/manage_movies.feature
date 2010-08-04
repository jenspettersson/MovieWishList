Feature: Manage Movies
    In order to make a movie wish list
    As a member
    I want to create and manage movies

    Scenario: Movies List
        Given I have movies titled Spiderman, Memento
        When I go to the list of movies
        Then I should see "Spiderman"
        And I should see "Memento"

    Scenario: Create Valid Movie
        Given I have no movies
        And I am on the list of movies
        When I follow "New movie"
        And I fill in "Title" with "Inception"
        And I fill in "Plot" with "Dream within a dream"
        And I press "Create"
        Then I should see "New movie added"
        And I should see "Inception"
        And I should see "Dream within a dream"
        And I should have 1 movie

    Scenario: Create Invalid Movie
        Given I have no movies
        And I am on the list of movies
        When I follow "New movie"
        And I fill in "Plot" with "Dream within a dream"
        And I press "Create"
        Then I should see "Title can't be blank"
        And I should have 0 movies

