const mysql = require("mysql");
const config = require("./config.json").db;

const connectionLink = mysql.createPool(config.link);

module.exports = connectionLink;
