const express = require('express');

const facturecontroller = require('../controllers/facture.controller');

const router = express.Router();

router.post("/", facturecontroller.save);
router.get("/", facturecontroller.index);
router.get("/:id", facturecontroller.show);
router.patch("/:id", facturecontroller.update);
router.delete("/:id", facturecontroller.destory);

module.exports = router;