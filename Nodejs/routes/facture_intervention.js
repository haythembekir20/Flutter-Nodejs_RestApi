const express = require('express');

const facture_interventioncontroller = require('../controllers/facture_intervention.controller');

const router = express.Router();

router.post("/", facture_interventioncontroller.save);
router.get("/", facture_interventioncontroller.index);
router.get("/:id", facture_interventioncontroller.show);
router.patch("/:id", facture_interventioncontroller.update);
router.delete("/:id", facture_interventioncontroller.destory);

module.exports = router;