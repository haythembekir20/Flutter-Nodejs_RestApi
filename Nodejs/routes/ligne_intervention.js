const express = require('express');

const ligne_interventioncontroller = require('../controllers/ligne_intervention.controller');

const router = express.Router();

router.post("/", ligne_interventioncontroller.save);
router.get("/", ligne_interventioncontroller.index);
router.get("/:id", ligne_interventioncontroller.show);
router.patch("/:id", ligne_interventioncontroller.update);
router.delete("/:id", ligne_interventioncontroller.destory);

module.exports = router;