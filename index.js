// const http = require('http')
const express = require("express");

const app = express();

app.get("/", (req, res) => {
  // console.log(req.query.name);
  res.end("<h1>Home Page</h1>");
});

app.get("/about", (req, res) => {
  // console.log(req.query.name);
  res.end("<h1>About Page</h1>");
});

app.listen(8000, () => console.log(`Server Started at Port 8000`));

// const myServer = http.createServer(app)

// myServer.listen(8000)
