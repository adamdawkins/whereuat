zombie = require("zombie")

World = World = (callback) ->
  @browser = new zombie()

  @visit = (url, callback) ->
    @browser.visit url, (err, browser, status) ->
      callback err, browser, status
 
  callback()

exports.World = World;
