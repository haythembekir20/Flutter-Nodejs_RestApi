const express = require('express');

const tachecontroller = require('../controllers/tache.controller');

const router = express.Router();

router.post("/", tachecontroller.save);
router.get("/", tachecontroller.index);
router.get("/:id", tachecontroller.show);
router.patch("/:id", tachecontroller.update);
router.delete("/:id", tachecontroller.destory);

module.exports = router;