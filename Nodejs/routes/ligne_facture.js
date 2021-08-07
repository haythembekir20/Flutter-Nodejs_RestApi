const express = require('express');

const ligne_facturecontroller = require('../controllers/ligne_facture.controller');

const router = express.Router();

router.post("/", ligne_facturecontroller.save);
router.get("/", ligne_facturecontroller.index);
router.get("/:id", ligne_facturecontroller.show);
router.patch("/:id", ligne_facturecontroller.update);
router.delete("/:id", ligne_facturecontroller.destory);

module.exports = router;