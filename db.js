const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123123',
  port: 3306,
  database: 'web',
});

module.exports = {
  getAllMemos,
  insertMemo,
  updateuser,
  deleteuser,
};
