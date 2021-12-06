var express = require('express');
var dbconfig = require('../config/dbconfig');
var session =require('express-session');
var router = express.Router();
var net = require('net');

/* GET home page. */
router.get('/', function(req, res, next) {
  //console.log(req.query.cid);
  sql = 'select slotid, x1, y1 from parkingslot where slotstatus=1'
  dbconfig.query(sql, function(err, results){
    if (err) {
      console.log(err);
    } else {
      if (results.length == 0) {
        res.render('parking',{slotcheck:0, data:{slotid:99},carid:req.query.cid});
      } else {
        const rand = Math.floor(Math.random() * results.length)
        //console.log(results[rand]);
        //res.render('parking', {data: results[rand], carid : req.query.cid, slotcheck : 1});
        res.render('parking', {data: results[1], carid : req.query.cid, slotcheck : 1});
      }
    }
  });
});

router.post('/Request', function (req, res) {
  if (req.session.parkingCheck == 1) {
    res.redirect('/paring2');
  } else {
    var carid = req.body["car"];
    var sid = req.body["slot"];
    console.log(carid);
    sql = 'select * from parkingslot where slotid=?';
    dbconfig.query(sql, req.body["slot"], function(err, results){
      if (err) {
        console.log(err);
      } else {
        console.log(results);
        req.session.parkinglocx = results[0]['x1'];
        req.session.parkinglocy = results[0]['y1'];
  
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
        /*
            console.log('서버가 보냄');
            if (Buffer.byteLength(chunk)!=8){
            var buftemp = chunk.slice(0, 8);
            console.log(chunk);
            console.log(buftemp);
            }
            console.log(Buffer.byteLength(chunk));
            var state = chunk[0];
            var cur_x1 = chunk.readDoubleBE(1);
            var cur_y1 = chunk.readDoubleBE(9);
            sql = 'insert into locinfo(carid, movex, movey, carstatus) values (?)';
            var rev = [[parseInt(carid), cur_x1, cur_y1, state]]
            console.log(rev);
            dbconfig.query(sql, rev, function(err, data){
              if (err) { console.log(err); }
              console.log("1 record inserted");
            });
            // 차량 고장이나 요청응답실패를 위한 처리 구현해야함
            if (state == 2){ 
              socket.end();
            }
          });
          */
        socket.on('end', function(){
          console.log('disconnected.');
        });
        socket.on('cloase', function() {
          console.log('client disconneted.');
        });
      }
    });
    /*
    updatesql = 'update parkingslot set slotstatus = 0, carid = ? where slotid=?'
    dbconfig.query(updatesql, [parseInt(carid),parseInt(sid)], function(err, results){
      if (err) { 
        console.log(err);
      }
      else {
        console.log(results);
      }
    });
    */
  }
});
  

  
module.exports = router;
