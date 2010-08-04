Feature: Manage Movies
    In order to make a movie wish list
    As a member
    I want to create and manage movies

    Background:
        Given I have the following movies
            | id| title     | plot                 |
            | 1 | Inception | Dream within a dream |
            | 2 | Spiderman | Spiders everywhere   |
            | 3 | The Ring  | Oh teh horror!       |

    Scenario: Movies List
        When I go to the list of movies
        Then I should see "Inception"
        And I should see "Spiderman"
        And I should see "The Ring"

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

    Scenario: Editing movie successfully
        Given I am editing the movie titled "Inception"
        Then the "Title" field should contain "Inception"
        And the "Plot" field should contain "Dream within a dream"
        When I fill in "Title" with "Another title"
        And I fill in "Plot" with "Another plot"
        And I press "Update"
        Then I should see "Movie updated"
        And I should see "Another title"

    Scenario: Editing movie unsuccessfully
        Given I am editing the movie titled "Inception"
        Then the "Title" field should contain "Inception"
        And the "Plot" field should contain "Dream within a dream"
        When I fill in "Title" with ""
        And I fill in "Plot" with "Another plot"
        And I press "Update"
        Then I should see "Title can't be blank"

