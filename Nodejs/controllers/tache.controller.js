const models = require('../models');


function save (req,res) {
    const tache = {
        
        id_client: req.body.id_client,
        id_tech: req.body.id_tech,
        etat: req.body.etat,
        date_creation: req.body.date_creation,
        vmc: req.body.vmc,
        chauffage: req.body.chauffage,
        climatisation: req.body.climatisation,
        plomberie: req.body.plomberie,
        dapannage: req.body.dapannage,
        livraison: req.body.livraison,
        travaux: req.body.travaux,
        ajouter_le: req.body.ajouter_le,
        ajouter_par: req.body.ajouter_par,
        modifier_le: req.body.modifier_le,
        modifier_par: req.body.modifier_par,
        supprimer_le: req.body.supprimer_le,
        supprimer_par: req.body.supprimer_par

    }
    
    models.tache.create(tache).then(result =>{
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
    models.tache.findByPk(id).then(result => {
        res.status(200).json(result);
    }).catch(error => {
        res.status(500).json({
            message:"Something went wrong !"
        })
    });
}

function index(req,res){
models.tache.findAll().then(result => {
    res.status(200).json(result);
}).catch(error=> {
    res.status(500).json({
        message:"Something Wnet Wrong"
    });
});
}

function update(req,res){
    const id = req.params.id;
    const updatedtache = {
        
      
        id_client: req.body.id_client,
        id_tech: req.body.id_tech,
        etat: req.body.etat,
        date_creation: req.body.date_creation,
        vmc: req.body.vmc,
        chauffage: req.body.chauffage,
        climatisation: req.body.climatisation,
        plomberie: req.body.plomberie,
        dapannage: req.body.dapannage,
        livraison: req.body.livraison,
        travaux: req.body.travaux,
        ajouter_le: req.body.ajouter_le,
        ajouter_par: req.body.ajouter_par,
        modifier_le: req.body.modifier_le,
        modifier_par: req.body.modifier_par,
        supprimer_le: req.body.supprimer_le,
        supprimer_par: req.body.supprimer_par
    }
    models.tache.update(updatedtache,{where : {id:id}}).then(result => {
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

    models.tache.destroy({
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