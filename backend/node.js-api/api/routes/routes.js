var express = require('express');
var router = express.Router();

const client = require('./controller/client/client_routes');
router.use('/', client);


module.exports = router;