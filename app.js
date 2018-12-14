const express = require("express");
const exphbs = require("express-handlebars");
const bodyParser = require("body-parser");
const path = require("path");

//Testing Database connection
const db = require("./config/database");
db.authenticate()
  .then(() => {
    console.log("Connection has been established successfully.");
  })
  .catch(err => {
    console.error("Unable to connect to the database:", err);
  });

//Database connection end

const app = express();
app.get("/", (req, res) => res.send("INDEX"));

//Gig Routes
app.use("/gigs", require("./routes/gigs"));

//Defining the port where the application will be accessible
const PORT = process.env.PORT || 5000;
app.listen(PORT, console.log("Server started at port ${PORT}"));
