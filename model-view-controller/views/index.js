function home(req, res) {
  res.send(`
    <html>
      <head>
        <title>User Management App</title>
      </head>
      <body>
        <h1>Welcome to the User Management App!</h1>
      </body>
    </html>
  `);
}

function form(req, res) {
  res.send(`
    <html>
      <head>
        <title>Create a New User</title>
      </head>
      <body>
        <h1>Create a New User</h1>
        <form action="/users" method="POST">
          <label>
            Username:
            <input type="text" name="username" required>
          </label>
          <br>
          <label>
            Password:
            <input type="password" name="password" required>
          </label>
          <br>
          <label>
            Name:
            <input type="text" name="name" required>
          </label>
          <br>
          <label>
            Email:
            <input type="email" name="email" required>
          </label>
          <br>
          <button type="submit">Create User</button>
        </form>
      </body>
    </html>
  `);
}

module.exports = {
  home,
  form,
};
