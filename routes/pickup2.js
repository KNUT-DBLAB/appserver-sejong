var express = require('express');
var dbconfig = require('../config/dbconfig');
var router = express.Router();
const mysql = require('mysql');

/* GET home page. */
router.get('/', function(req, res, next){
  var cur_time = new Date();
  console.log(cur_time);
  console.log(cur_time.getTime());
  sql = 'select carstatus, movex, movey from locinfo where time > ?'
  dbconfig.query(sql, cur_time, function(err, results){
    if (err) {
      console.log(err)
    } else {
      if (results.length == 0){
        console.log("데이터가 없습니다.");
        res.render('pickup2', {time: cur_time.getTime(), state: "0"})
      } else  {
        console.log(results)
        console.log("픽업 데이터의 개수 : "+results.length);
        res.render('pickup2', {time: cur_time.getTime(), state: results[results.length-1]["carstatus"]})
      }
    }
  });
});

router.post('/tracking', function(req, res, next) {
  var time = req.body;
  pre_time = new Date(parseInt(time['pram']));
  sql = 'select carstatus, movex, movey from locinfo where time > ?'
  dbconfig.query(sql, pre_time, function(err, results){
    if (err) {
      console.log(err);
    } else {
      if (results.length == 0){
        console.log("데이터가 없습니다.");
        res.json(results);
      } else  {
        console.log("픽업 데이터의 개수 : "+results.length);
        res.json(results);
      }
    }
  });
});


module.exports = router;
