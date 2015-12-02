var debug = require('debug')('base64:router')
var express = require('express')
var bodyParser = require('body-parser')

module.exports = function (config) {
  var router = express.Router()
  router.use(bodyParser.json())

  router.post('/', function (req, res) {
    var value = req.body.value
    res.send({
      result: new Buffer(value).toString('base64')
    })
  })

  return router
}
