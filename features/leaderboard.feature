Feature: Leaderboard
  As a competitive persion
  In order to compete with other people 
  I want to see a leaderboard
  
  Scenario: I have finished a game
    Given that I am playing a game
    When I have no lives left
    Then I should see the leaderboard page

  Scenario: I go to the leaderboard
    Given that I am on the homepage
    When I click 'leaderboard'
    Then I should see the leaderboard page

  Scenario: Entering your name
    Given that I am on the leaderboard page
    When I enter 'K Dawkz' in the name field
    Then I should see the K Dawkz in the leaderboard table
