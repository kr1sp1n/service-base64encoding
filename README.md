# service-base64encoding
Base64 encoding as a service.

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)


API
---------------

### REQ
`POST /`

**Headers**
`Content-Type=application/json`

**Body**
```json
{
  "value": "hello"
}
```

### RES

`200 OK`
```json
{
  "result": "aGVsbG8="
}
```
