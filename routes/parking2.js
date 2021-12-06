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
  }
  //var cur_time = new Date();
  console.log(req.query.sid);
  console.log(req.query.cid);

  /*
  sql = 'select * from parkingslot where carid = ?;
  dbconfig.query(sql, req.query.cid, function(err, results){
    if (err) {
      console.log(err);
    } else {
      console.log(results);
    }
  });
  */

  router.get('/', function (req, res, next) {
    //console.log(req.query.cid);
    sql = 'select slotid, x1, y1 from parkingslot where slotid = ?'
    dbconfig.query(sql, function (err, results) {
      if (err) {
        console.log(err);
      }
    }
    );
  });

  sql = 'select carid, carstatus, movex, movey from locinfo where carid = ? AND time > ?'
  dbconfig.query(sql, [req.query.cid, cur_time], function (err, results) {
    if (err) {
      console.log(err);
    } else {
      if (results.length == 0) {
        console.log("데이터가 없습니다.");
        res.render('parking2', { d_x: 0, d_y: 0, time: cur_time.getTime(), carstatus: "0", carid: req.query.cid })
      } else {
        //console.log(results)
        console.log("파킹 데이터의 개수 : " + results.length);
        res.render('parking2', { d_x: 0, d_y: 0, time: cur_time.getTime(), state: results[results.length - 1]["carstatus"], carid: req.query.cid })
      }
    }
  });

});

router.post('/tracking', function (req, res, next) {
  if (req.session.parkingCheck == 1) {
    pre_time = new Date(req.session.parking);
  }
  var data = req.body;
  //  pre_time = new Date(parseInt(data['pram']));
  carid = data['pramcar'];
  console.log(carid);
  console.log(pre_time);
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
        results.x1 = data['x1'];
        results.y1 = data['y1'];
        res.json(results);
      } else {
        console.log("파킹 데이터의 개수 : " + results.length);
        results.carid = carid;
        results.time = data['pram'];
        results.d_x = data['x1'];
        results.d_y = data['y1'];
        res.json(results);
      }
    }
  });
});


module.exports = router;
