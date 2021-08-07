const express = require('express');

const intercontroller = require('../controllers/intervention.controller');

const router = express.Router();

router.post("/", intercontroller.save);
router.get("/", intercontroller.index);
router.get("/:id", intercontroller.show);
router.patch("/:id", intercontroller.update);
router.delete("/:id", intercontroller.destory);

module.exports = router;