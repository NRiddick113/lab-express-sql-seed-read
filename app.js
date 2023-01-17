// DEPENDENCIES
const cors = require("cors");
const express = require("express");

// CONFIGURATION
const app = express();
const songController = require('./controllers/songController')

// MIDDLEWARE
app.use(cors());
app.use(express.json());
app.use('/songs', songController)

// ROUTES
app.get("/", (req, res) => {
  res.send("Welcome to Tuner");
});

// EXPORT
module.exports = app;