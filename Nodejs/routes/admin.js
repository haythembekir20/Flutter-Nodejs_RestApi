const express = require('express');

const admincontroller = require('../controllers/admin.controller');

const router = express.Router();

router.post("/", admincontroller.save);
router.get("/", admincontroller.index);
router.get("/:id", admincontroller.show);
router.patch("/:id", admincontroller.update);
router.delete("/:id", admincontroller.destory);

module.exports = router;