var express = require('express');
var session = require('express-session');
var router = express.Router();
const mysql = require('mysql');
var request = require('request');

function sleep (delay) {
  var start = new Date().getTime();
  while (new Date().getTime() < start + delay);
}

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123123',
  port: 3306,
  database: 'SejongDB',
});

connection.connect();

// var arrx = new Array();
// var arry = new Array();
connection.query('select time, movex, movey from locinfo where time>=20211209202928', (error, result, fields) => {

  // arrx[i] = result.movex;
  // arry[i] = result.movey;

  if (error) throw error;
  // 역주행
  // console.log(result[1].movex);
  // console.log(result[2].movey);
  // console.log(result[1])
  //setInterval(function(){ 
  //for (var i = 0; i < Object.keys(result).length; i++) {
  for (var i = 0; i < 10; i++) {
    // arrx.push[i];

    // console.log(result[i].movex)
    // console.log(result[i].movey)
    var arrx = result[i].movex;
    var arry = result[i].movey;
    console.log(arrx);
    console.log(arry);

    var sql = 'INSERT INTO testlocinfo(movex, movey) VALUES(?,?)';
    var params = [arrx,arry];
    connection.query(sql,params,function(err,rows,fields) {
      if(err){
        console.log(err);
      } else {
        console.log(rows);
      }
    });
    console.log("check");

  }
});
//}, 1000);
module.exports = connection;
