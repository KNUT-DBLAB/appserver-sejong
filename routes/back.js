var express = require('express');
var router = express.Router();
const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123123',
    port: 3306,
    database: 'SejongDB',
  });
  
  connection.connect();

router.get('/', function(req, res, next) {
    res.render('back', { title: 'Express' });
  });

router.post('/parkingslot', function (req, res) {
  });

  router.get('/getajax', function(req, res, next) {
    res.render("main/ajax");
});

router.post('/ajax', function(req, res, next) {
    console.log('POST 방식으로 서버 호출됨');
    //view에 있는 data 에서 던진 값을 받아서
    var msg = req.body.msg;
    msg = '[에코]' + msg;
    //json 형식으로 보내 준다.
    res.send({result:true, msg:msg});
});

// connection.connect();
// connection.query('select * from parkingslot', (error, rows, fields) =>{
//   if (error) throw error;
//   console.log('123', rows);
// });


app.get("/",function(request,response){  
    connection.query('SELECT * from carinfo', function(err, rows, fields) {  
    connection.end();  
      if (!err){  
        response.send(rows);   
        console.log('The solution is: ', rows);  
      }  
      else  
        console.log('Error while performing Query.');  
      });  
    }); 


  module.exports = router;
  