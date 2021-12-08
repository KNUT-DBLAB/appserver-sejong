var express = require('express');
var session = require('express-session');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  req.session.parkingCheck = 0;
  req.session.parkinglocx = 0.0;
  req.session.parkinglocy = 0.0;

  req.session.pickupCheck = 0;
  req.session.pickuplocx = 0.0;
  req.session.pickuplocy = 0.0;
  res.render('main', { title: 'Express' });
});

module.exports = router;
