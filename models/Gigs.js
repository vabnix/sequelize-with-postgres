const Sequelize = require("sequelize");
const db = require("../config/database");

const Gigs = db.define("gig", {
  title: {
    type: Sequelize.STRING
  },
  technology: {
    type: Sequelize.STRING
  },
  budget: {
    type: Sequelize.STRING
  },
  description: {
    type: Sequelize.STRING
  },
  email: {
    type: Sequelize.STRING
  }
});

module.exports(Gigs);
