var express = require('express');
var session = require('express-session');
var router = express.Router();
const mysql = require('mysql');
var request = require('request');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123123',
  port: 3306,
  database: 'SejongDB',
});

connection.connect();

connection.query('select * from parkingslot', (error, rows, fields) =>{
  if (error) throw error;
  console.log('123', rows);
});

/* GET home page. */
router.get('/', function(req, res, next) {
  req.session.parkingCheck = 0;
  res.render('index', { title: 'Express' });
});

module.exports = router;
