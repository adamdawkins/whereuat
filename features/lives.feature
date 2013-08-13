Feature: Lives
  As a person with a life
  In order to have an ending to the game
  I must have a limited number of lives


  Scenario: Starting the game
    Given that I am on the homepage
    When I click 'start'
    Then I should have 3 lives

  Scenario: Guessing incorrectly
    Given that I am on the guessing page
    And I have 3 lives
    And the country is France
    When I guess 'Italy'
    Then I should have 2 lives

  Scenario: Guessing correctly
    Given that I am on the guessing page
    And I have 3 lives
    And the country is France
    When I guess 'France'
    Then I should have 3 lives

  Scenario: Out of lives
    Given that I am on the guessing page
    And I have 1 life
    And the country is France
    When I guess Italy
    Then I should have 0 lives
    And I should go to the leaderboard page
