zombie = require("zombie")
HTML5 = require("html5")

World = World = (callback) ->
  @browser = new zombie()

  @visit = (url, callback) ->
    @browser.visit url, (err, browser, status) ->
      callback err, browser, status
 
  callback()

exports.World = World;
