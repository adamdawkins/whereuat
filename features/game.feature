Feature: The Guessing Game
  As a bored person
  In order to alleviate my bordem
  I want to guess where in the world a picture was taken.

 
  Scenario: I start the game
    Given I am on the homepage
    When I click the 'start' button
    Then I should see a Google StreetView
    And I should see a dropdown menu of countries
    And I should see a 'guess' button

  Scenario: I guess wrong the first time
    Given I am on the guessing page
    And the country is 'France'
    When I guess 'New Zealand'
    Then I should see 'Wrong!'
    And I should lose a life

  Scenario: I guess wrong, but closer the second time
    Given I am on the guessing page
    And the country is 'France'
    And I already guessed 'New Zealand'
    When I guess 'Italy'
    Then I should see 'Wrong!'
    And I should lose a life
    And I should see "Getting Warmer!"

  Scenario: I guess wrong, but further away the second time
    Given I am on the guessing page
    And the country is 'France'
    And I already guessed 'Italy'
    When I guess 'Hawaii'
    Then I should see 'Wrong!'
    And I should lose a life
    And I should see "You iz way out blud!"

  Scenario: I guess correctly
    Given I am on the guessing page
    And the country is 'France'
    When I guess 'France'
    Then I should see 'Tada! You got it right'
    And I should see my score increase by 1
    And I should go to a new guessing page

  Scenario: I guess wrong three times
    Given I am on the guessing page
    And I have one life left
    And the country is 'France'
    When I guess 'Italy'
    Then I should see "Game Over"
    And I should see "The correct country was France"
    And I should go to the leaderboard page
