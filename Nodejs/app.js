const express = require('express');
const bodyparser = require('body-parser');


const app = express();

const interventionroute = require('./routes/intervention');
const ligne_interventionroute = require('./routes/ligne_intervention');
const facture_interventionroute = require('./routes/facture_intervention');
const ligne_factureroute = require('./routes/ligne_facture');
const factureroute = require('./routes/facture');
const tacheroute = require('./routes/tache');
const clientroute = require('./routes/client');
const technicianroute = require('./routes/technician');
const adminroute = require('./routes/admin');

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
  });
  
app.use(bodyparser.json());
app.use("/interventions",interventionroute);
app.use("/ligne_intervention",ligne_interventionroute);
app.use("/facture_intervention",facture_interventionroute);
app.use("/ligne_facture",ligne_factureroute);
app.use("/facture",factureroute);
app.use("/tache",tacheroute);
app.use("/client",clientroute);
app.use("/technician",technicianroute);
app.use("/admin",adminroute);

module.exports = app;