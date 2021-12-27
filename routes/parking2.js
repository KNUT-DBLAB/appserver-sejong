var express = require('express');
var session = require('express-session');
var dbconfig = require('../config/dbconfig');
var router = express.Router();
const mysql = require('mysql');

/* GET home page. */
router.get('/', function (req, res, next) {
  var cur_time;
  if (req.session.parkingCheck == 0) {
    console.log("22222222222");
    cur_time = new Date();
    req.session.parking = cur_time;
    req.session.parkingCheck = 1;
  } else {
    console.log("1111111111111111111");
    cur_time = new Date(req.session.parking);
    console.log(cur_time);
  }

  sql = 'select carid, carstatus, movex, movey from locinfo where carid = ? AND time > ?'
  dbconfig.query(sql, [req.query.cid, cur_time], function (err, results) {
    if (err) {
      console.log(err);
    } else {
      if (results.length == 0) {
        console.log("데이터가 없습니다.");
        res.render('parking2', { locx:req.query.x1, locy:req.query.y1, time: cur_time.getTime(), carstatus: "0", carid: req.query.cid, slotid: req.query.slotid });
      } else {
        console.log("파킹 데이터의 개수 : " + results.length);
        res.render('parking2', { locx:req.query.x1, locy:req.query.y1, time: cur_time.getTime(), state: results[results.length - 1]["carstatus"], carid: req.query.cid, slotid: req.query.slotid });
      }
    }
  });
});

router.post('/tracking', function (req, res, next) {
  if (req.session.parkingCheck == 1) {
    pre_time = new Date(req.session.parking);
  }
  var data = req.body;
  req.session.parkinglocx = data['locx'];
  req.session.parkinglocy = data['locy'];
  req.session.parkingslotid = data['slotid'];
  carid = data['pramcar'];

  sql = 'select carstatus, movex, movey from locinfo where carid = ? AND time > ?'
  dbconfig.query(sql, [carid, pre_time], function (err, results) {
    if (err) {
      console.log(err);
    } else {
      if (results.length == 0) {
        console.log("데이터가 없습니다.");
        results.carid = carid;
        results.carstatus = 1;
        results.time = data['pram'];
        results.locx = req.session.parkinglocx;
        results.locy = req.session.parkinglocy;
        results.slotid = req.session.parkingslotid;
        res.json(results);
      } else {
        console.log("파킹 데이터의 개수 : " + results.length);
        results.carid = carid;
        results.time = data['pram'];
        results.locx = req.session.parkinglocx;
        results.locy = req.session.parkinglocy;
        results.slotid = req.session.parkingslotid;
        res.json(results);
      }
    }
  });
});


module.exports = router;
