const { callQuery } = require("./index");

function createUser(username, password, name, email, callback) {
  const query =
    "INSERT INTO users (username, password, name, email) VALUES (?, ?, ?, ?)";
  const values = [username, password, name, email];
  callQuery(query, values, callback);
}

function removeUser(userId, callback) {
  const query = "DELETE FROM users WHERE id = ?";
  const values = [userId];
  callQuery(query, values, callback);
}

function getAllUsers(callback) {
  const query = "SELECT * FROM users";
  callQuery(query, callback);
}

function getUserById(userId, callback) {
  const query = "SELECT * FROM users WHERE id = ?";
  const values = [userId];
  callQuery(query, values, callback);
}

function updateUser(userId, username, password, name, email, callback) {
  const query =
    "UPDATE users SET username = ?, password = ?, name = ?, email = ? WHERE id = ?";
  const values = [username, password, name, email, userId];
  callQuery(query, values, callback);
}

function updateUserPassword(userId, password) {
  const query = "UPDATE users SET password = ? WHERE id = ?";
  const values = [password, userId];
  callQuery(query, values, callback);
}

function updateUserEmail(userId, email) {
  const query = "UPDATE users SET email = ? WHERE id = ?";
  const values = [email, userId];
  callQuery(query, values, callback);
}

module.exports = {
  createUser,
  removeUser,
  getAllUsers,
  getUserById,
  updateUser,
  updateUserPassword,
  updateUserEmail,
};
