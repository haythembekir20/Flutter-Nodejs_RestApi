const express = require('express');

const clientcontroller = require('../controllers/client.controller');

const router = express.Router();

router.post("/", clientcontroller.save);
router.get("/", clientcontroller.index);
router.get("/:id", clientcontroller.show);
router.patch("/:id", clientcontroller.update);
router.delete("/:id", clientcontroller.destory);

module.exports = router;