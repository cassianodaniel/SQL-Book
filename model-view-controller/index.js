const express = require("express");
const bodyParser = require("body-parser");
const userController = require("./controllers/userController");
const { home, form } = require("./views");

const app = express();
const port = 3000;

// Use body-parser middleware to handle URL-encoded data
app.use(bodyParser.urlencoded({ extended: false }));

// Set up routes
app.get("/", home);
app.get("/form", form);
app.post("/users", userController.createUser);

// Start the server
app.listen(port, () => {
  console.log(`Server started on port ${port}`);
});
