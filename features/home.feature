Feature: The home screen
  As a Where U At user
  In order to play the game
  I want to see useful information on the homepage.

  Background:
    Given I visit the homepage

  Scenario:
    Then I should be on a page with title "Where U At?"
    And I should see a start button

