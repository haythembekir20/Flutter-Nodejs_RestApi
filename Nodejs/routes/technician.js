const express = require('express');

const techniciancontroller = require('../controllers/technician.controller');

const router = express.Router();

router.post("/", techniciancontroller.save);
router.get("/", techniciancontroller.index);
router.get("/:id", techniciancontroller.show);
router.patch("/:id", techniciancontroller.update);
router.delete("/:id", techniciancontroller.destory);

module.exports = router;