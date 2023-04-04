const mysql = require("mysql");
const userModel = require("./userModel");

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "students",
});

const { callQuery } = connection;

module.exports = {
  callQuery,
  userModel,
};
