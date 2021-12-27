var express = require('express');
var dbconfig = require('../config/dbconfig');
var router = express.Router();
var net = require('net');

/* GET home page. */
router.get('/', function(req, res, next) {
  //console.log(req.query.cid);
  sql = 'select slotid, x1, y1, x2,y2,x3,y3,x4,y4 from parkingslot where slotstatus=1 order by parkingzone1 asc;'
  dbconfig.query(sql, function(err, results){
    if (err) {
      console.log(err);
    } else {
      if (results.length == 0) {
        res.render('test',{slotcheck:0, data:{slotid:99},carid:req.query.cid});
      } else {
        // const rand = Math.floor(Math.random() * results.length)
        //console.log(results[rand]);
        // results[0] 변경
        console.log(results);
        res.render('test', {data: results, carid : 0, slotcheck : 1});
        // res.render('parking', {data: results[1], carid : req.query.cid, slotcheck : 1});
      }
    }
  });
});

router.post('/Request', function (req, res) {
  console.log(req.session.parkingCheck);
  if (req.session.parkingCheck == 1) {
    console.log("session exist "+req.session.parkingCheck);
    res.redirect('/paring2');
  } else {
    console.log("session not exist");
    var carid = req.body["car"];
    var sid = req.body["slot"];
    console.log(carid);
    sql = 'select * from parkingslot where slotid=?';
    dbconfig.query(sql, req.body["slot"], function(err, results){
      if (err) {
        console.log(err);
      } else {
        var socket = net.connect({port:30000});
        socket.on('connect', function(){
          console.log('connected to server!');
          var buf = new Buffer.alloc(66)
          buf[0] = 0;
          buf[1] = results[0]['linkid'];
          buf.writeDoubleLE(results[0]['x1'],2);
          buf.writeDoubleLE(results[0]['y1'],10);
          buf.writeDoubleLE(results[0]['x2'],18);
          buf.writeDoubleLE(results[0]['y2'],26);
          buf.writeDoubleLE(results[0]['x3'],34);
          buf.writeDoubleLE(results[0]['y3'],42);
          buf.writeDoubleLE(results[0]['x4'],50);
          buf.writeDoubleLE(results[0]['y4'],58);
          socket.write(buf);
        });

        socket.on('data', function(data){
          console.log('data in');

        }); 
        socket.on('end', function(){
          console.log('disconnected.');
        });
        socket.on('cloase', function() {
          console.log('client disconneted.');
        });
      }
    });
    
    // updatesql = 'update parkingslot set slotstatus = 0, carid = ? where slotid=?'
    // dbconfig.query(updatesql, [parseInt(carid),parseInt(sid)], function(err, results){
    //   if (err) { 
    //     console.log(err);
    //   }
    //   else {
    //     console.log(results);
    //   }
    // });
    
  }
});
  

  
module.exports = router;
