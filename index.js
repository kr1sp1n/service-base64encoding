var debug = require('debug')('base64:server')

var config = require(__dirname + '/config.js')
var server = require(__dirname + '/src/server.js')(config)

server.listen(server.app.get('port'), function () {
  debug('Running on port %s', server.app.get('port'))
})
