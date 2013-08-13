Feature: Using moves
  As a player
  In order to work out where I am
  I want to be able to move around the Street View

  Scenario: Start a game
    Given I have started a game
    When I go to the guessing page
    Then I should have three moves

  Scenario: Completing a guess
    Given I am on the guessing page
    And the country is France
    When I guess France
    Then I should have three moves

  Scenario: Using a move
    Given I am on the guessing page
    When I click the 'use a move' button
    Then I should see arrows on the map

  Scenario: Actually Moving
    Given I am on the guessing page
    And I have clicked 'use a move'
    And I have 3 moves remaining
    When I click an arrow
    Then the map should move
    And I should have 2 moves remaining

  Scenario: Trying to move with no moves left
    Given I am on the guessing page
    And I have clicked 'use a move'
    And I have 0 moves remaining
    When I click an arrow
    Then the map should not move
    And I should see "you have no moves left"

  Scenario: Trying to click use a move with no moves
    Given I have 0 moves remaining
    When I am on the guessing page
    Then I should not see a 'use a move' button
