const express = require("express");
const { catController } = require("../controllers");

const catRouter = express.Router();

catRouter
  .get("/", catController.getAllCats)
  //.post("/", catController.addCat)
  //.get("/:catId", catController.getCatById)

  module.exports = catRouter;
