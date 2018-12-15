const express = require("express");
const router = express.Router();
const db = require("../config/database");
const Gig = require("../models/Gigs");

//Getting the data from gigs
router.get("/", (req, res) => {
  Gig.findAll()
    .then(gigs =>
      res.render("gigs", {
        gigs
      })
    )
    .catch(err => {
      console.logs("Unable to get the data from database ", err);
    });
});

//Adding data
router.get("/add", (req, res) => {
  const data = {
    title: "Web Developer - Junior",
    technologies: "react, javascript, html, css",
    budget: "$3500",
    description:
      "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
    contact_email: "user1@google.com"
  };
  let { title, technologies, budget, description, contact_email } = data;

  Gig.create({
    title,
    technologies,
    budget,
    description,
    contact_email
  })
    .then(gig => res.redirect("/gigs"))
    .catch(err => console.log(err));
});
module.exports = router;
