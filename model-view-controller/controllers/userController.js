const userModel = require("../models/userModel");

function createUser(req, res) {
  const { username, password, name, email } = req.body;
  userModel.createUser(
    username,
    password,
    name,
    email,
    (error, results, fields) => {
      if (error) {
        console.error(error);
        res.sendStatus(500);
      } else {
        console.log(`User created with ID ${results.insertId}`);
        res.redirect("/");
      }
    }
  );
}

module.exports = {
  createUser,
};
