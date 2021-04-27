const express = require("express"),
      catRouter = require("./catRouter");

const router = express.Router();

router.use("/", catRouter);

module.exports = router;
