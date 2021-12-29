var net = require('net');
var mysql = require('mysql');

const db = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '123123',
  port: 3306,
  database: 'SejongDB',
});

var web_check = 0;
var web_data = new Buffer.alloc(1);
var one_buffer = new Buffer.alloc(1);
var server = net.createServer(function(socket){
  console.log(socket.address().address + " connected.");

  // client로 부터 오는 data를 화면에 출력
  socket.on('data', function(data){
    if ( Buffer.byteLength(data) == 66 ){
      web_data = data;
      web_check = 1;
      console.log("web data recv");
      socket.end()
    } else if ( Buffer.byteLength(data) == 17) {
      sql = 'insert into locinfo(carid, movex, movey, carstatus) values (?)';
      var state = data[0];
      var cur_x1 = data.readDoubleLE(1);
      var cur_y1 = data.readDoubleLE(9);
      var rev = [[0, cur_x1, cur_y1, state]]
      db.query(sql, rev, function(err, results) {
        if (err){
          console.log(err)
        } else {
          console.log(results)
        }
      });
      console.log("car data recv");
      console.log(data);
      if (state == 2) {
        console.log("parking success");
        socket.write(one_buffer);
        web_data = one_buffer;
      }
    } else {
      socket.write(web_data);
      console.log(web_data);
      console.log("qwer");
    }

    function sleep (delay) {
      var start = new Date().getTime();
      while (new Date().getTime() < start + delay);
    }
    
  });
  socket.on('error', function(err){
    console.log('Socket error!');
    console.log(err);
  });
  // client와 접속이 끊기는 메시지 출력
  socket.on('close', function(){
    if (web_check == 1){
      console.log("web");
      web_check = 0;
    }else {
      console.log("car");
      web_data = one_buffer;
    }
    console.log('client disconnted.');
  });
});

server.listen({port:30000}, function() {
  console.log('linsteing on 30000..');
});

console.log(web_data);



