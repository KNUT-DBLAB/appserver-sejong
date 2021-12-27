var express = require('express');
var dbconfig = require('../config/dbconfig');
var router = express.Router();
const mysql = require('mysql');

/* GET home page. */



router.get('/', function(req, res, next){
  var cur_time;
  if (req.session.pickupCheck == 0) {
    console.log("2222222222222");
    cur_time = new Date();
    req.session.pickup = cur_time;
    req.session.pickupCheck = 1;
  } else {
    console.log("111111111111111111111");
    cur_time = new Date(req.session.pickup);
    console.log(cur_time);
  }
  
  sql = 'select carstatus, movex, movey from locinfo where time > ?'
  dbconfig.query(sql, cur_time, function(err, results){
    if (err) {
      console.log(err)
    } else {
      if (results.length == 0){
        console.log("데이터가 없습니다.");
        res.render('pickup2', {locx:req.query.x1, locy:req.query.y1, time: cur_time.getTime(), state: "0"})
      } else  {
        console.log(results)
        console.log("픽업 데이터의 개수 : "+results.length);
        res.render('pickup2', {locx:req.query.x1, locy:req.query.y1, time: cur_time.getTime(), state: results[results.length-1]["carstatus"]})
      }
    }
  });
});

router.post('/tracking', function(req, res, next) {
  if (req.session.pickupCheck == 1) {
    pre_time = new Date(req.session.pickup);
  }
  var data = req.body;
  req.session.pickuplocx = data['locx'];
  req.session.pickuplocy = data['locy'];
  sql = 'select carstatus, movex, movey from locinfo where time > ?'
  dbconfig.query(sql, pre_time, function(err, results){
    if (err) {
      console.log(err);
    } else {
      if (results.length == 0){
        console.log("데이터가 없습니다.");
        results.time = data['pram'];
        results.locx = req.session.pickuplocx;
        results.locy = req.session.pickuplocy;
        console.log(results);
        res.json(results);
      } else  {
        console.log("픽업 데이터의 개수 : "+results.length);
        results.time = data['pram'];
        results.locx = req.session.pickuplocx;
        results.locy = req.session.pickuplocy;
        console.log(results);
        res.json(results);
      }
    }
  });
});


module.exports = router;
