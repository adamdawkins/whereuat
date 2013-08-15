
module.exports = ->
  @World = require("../support/world.coffee").World

  @Given /^I visit the homepage$/, (callback) ->
    @visit("http://localhost:2403/", callback)

  @Then 'I should be on a page with title "$title"', (title, callback) ->
    expected_title = title
    actual_title = @browser.text("title")
    if actual_title isnt expected_title
      callback.fail new Error("Expected to be on page with title: #{expected_title}, but I'm on page with title: #{actual_title}")
    else
      callback()

  @Then 'I should see a start button', (callback) ->
    start_button = @browser.button("Start")
    if start_button is undefined
      callback.fail new Error("Expected to find a Start button, but there wasn't one")
    else
      callback()
