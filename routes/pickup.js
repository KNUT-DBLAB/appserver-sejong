var express = require('express');
var net = require('net');
var dbconfig = require('../config/dbconfig');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  sql = 'select * from parkingslot where carid = ?'
  dbconfig.query(sql, parseInt(req.query.cid), function(err, results){
    if (err) {
      console.log(err);
    } else {
      console.log(results);
      res.render('pickup', {data: results[0], carid : req.query.cid});
    }
  });
});

router.post('/Request', function (req, res) {
  var body = req.body;
  var carid = parseInt(body["car"]);
  
  sql = 'select * from pickuploc where pid=?';
  dbconfig.query(sql, body["pid"], function(err, results){
    if (err) {
      console.log(err);
    } else {
      console.log(results);
     
      var socket = new net.Socket();
      socket.connect({host:'localhost', port:30000},function() {
        console.log("connect server");

        var buf = new Buffer.alloc(66);
        buf[0] = 1;
        buf[1] = 0;
        buf.writeDoubleBE(results[0]['x1'],2);
        buf.writeDoubleBE(results[0]['y1'],10);
        buf.writeDoubleBE(results[0]['x1'],18);
        buf.writeDoubleBE(results[0]['y1'],26);
        buf.writeDoubleBE(results[0]['x1'],34);
        buf.writeDoubleBE(results[0]['y1'],42);
        buf.writeDoubleBE(results[0]['x1'],50);
        buf.writeDoubleBE(results[0]['y1'],58);
        socket.write(buf);

        socket.on('data', function(chunk){

          console.log('서버가 보냄');
          console.log(Buffer.byteLength(chunk));
          var state = chunk[0];
          var cur_x1 = chunk.readDoubleBE(1);
          var cur_y1 = chunk.readDoubleBE(9);
          sql = 'insert into locinfo(carid, movex, movey, carstatus) values (?)';
          var rev = [[parseInt(carid), cur_x1, cur_y1, state]]
          console.log(rev);
          dbconfig.query(sql, rev, function(err, data){
            if (err) { console.log(err); }
          });
          // 차량 고장이나 요청응답실패를 위한 처리 구현해야함
          if (state == 2){
            updatesql = 'update parkingslot set slotstatus = 1, carid = 99 where slotid=?'
            dbconfig.query(updatesql, parseInt(carid), function(err, results){
              if (err) { console.log(err); }
              else { console.log(results); }
            });
            socket.end();
          }
        });
        socket.on('end', function(){
          console.log('disconnected.');
        });
      });
    }
  });
});




module.exports = router;
