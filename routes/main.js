var express = require('express');
var session = require('express-session');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  req.session.parkingCheck = 0;
  res.render('main', { title: 'Express' });
});

module.exports = router;
