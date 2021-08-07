const models = require('../models');


function save (req,res) {
    const facture = {
        
        date_envoie: req.body.date_envoie,
        date_paiement: req.body.date_paiement,
        modalite_payment: req.body.modalite_payment,
        total_ht: req.body.total_ht,
        total_ttc: req.body.total_ttc,
        tva: req.body.tva,
        remise: req.body.remise,
        a_payer: req.body.a_payer,
        ajouter_le: req.body.ajouter_le,
        ajouter_par: req.body.ajouter_par,
        modifier_le: req.body.modifier_le,
        modifier_par: req.body.modifier_par,
        supprimer_le: req.body.supprimer_le,
        supprimer_par: req.body.supprimer_par

    }
    
    models.facture.create(facture).then(result =>{
       res.status(201).json({
           message : "Post created succesfully",
           post: result

       });
    }).catch(error=> {
        res.status(500).json({
            message : "Something Wrong",
            error: error
 
        });
    });
}

function show(req,res){
    const id = req.params.id;
    models.facture.findByPk(id).then(result => {
        res.status(200).json(result);
    }).catch(error => {
        res.status(500).json({
            message:"Something went wrong !"
        })
    });
}

function index(req,res){
models.facture.findAll().then(result => {
    res.status(200).json(result);
}).catch(error=> {
    res.status(500).json({
        message:"Something Wnet Wrong"
    });
});
}

function update(req,res){
    const id = req.params.id;
    const updatedfacture = {
        
        date_envoie: req.body.date_envoie,
        date_paiement: req.body.date_paiement,
        modalite_payment: req.body.modalite_payment,
        total_ht: req.body.total_ht,
        total_ttc: req.body.total_ttc,
        tva: req.body.tva,
        remise: req.body.remise,
        a_payer: req.body.a_payer,
        ajouter_le: req.body.ajouter_le,
        ajouter_par: req.body.ajouter_par,
        modifier_le: req.body.modifier_le,
        modifier_par: req.body.modifier_par,
        supprimer_le: req.body.supprimer_le,
        supprimer_par: req.body.supprimer_par
    }
    models.facture.update(updatedfacture,{where : {id:id}}).then(result => {
        res.status(200).json({
            message:"Post updated successfully",
            post : result 
        });
    }).catch(error => {
        res.status(200).json({
            message:"Something went wrong",
            error:error
        });
    });
}

function destory(req , res){
    const id = req.params.id;

    models.facture.destroy({
        where: { id: id }
      })
        .then(num => {
          if (num == 1) {
            res.send({
              message: " was deleted successfully!"
            });
          } else {
            res.send({
              message: `Cannot delete  with id=${id}. Maybe  was not found!`
            });
          }
        })
        .catch(err => {
          res.status(500).send({
            message: "Could not delete  with id=" + id
          });
        });
 
}


module.exports = {
    save:save,
    show:show,
    index:index,
    update:update,
    destory:destory
}