var express = require('express')
var http = require('http')

module.exports = function (config) {
  var router = require(__dirname + '/router.js')(config)
  var app = express()
  var port = config.port || 5050
  app.set('port', port)
  // mount router
  app.use('/', router)
  var server = http.createServer(app)
  server.app = app
  return server
}
