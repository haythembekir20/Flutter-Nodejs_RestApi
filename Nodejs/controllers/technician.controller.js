const models = require('../models');


function save (req,res) {
    const technician = {
        
        dern_cnx: req.body.dern_cnx,
        nom: req.body.nom,
        prenom: req.body.prenom,
        email: req.body.email,
        tel: req.body.tel,
        adresse: req.body.adresse,
        desactiver: req.body.desactiver,
        login: req.body.login,
        mdp: req.body.mdp,
        ajouter_le: req.body.ajouter_le,
        ajouter_par: req.body.ajouter_par,
        modifier_le: req.body.modifier_le,
        modifier_par: req.body.modifier_par,
        supprimer_le: req.body.supprimer_le,
        supprimer_par: req.body.supprimer_par

    }
    
    models.technician.create(technician).then(result =>{
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
    models.technician.findByPk(id).then(result => {
        res.status(200).json(result);
    }).catch(error => {
        res.status(500).json({
            message:"Something went wrong !"
        })
    });
}

function index(req,res){
models.technician.findAll().then(result => {
    res.status(200).json(result);
}).catch(error=> {
    res.status(500).json({
        message:"Something Wnet Wrong"
    });
});
}

function update(req,res){
    const id = req.params.id;
    const updatedtechnician = {
        
        dern_cnx: req.body.dern_cnx,
        nom: req.body.nom,
        prenom: req.body.prenom,
        email: req.body.email,
        tel: req.body.tel,
        adresse: req.body.adresse,
        desactiver: req.body.desactiver,
        login: req.body.login,
        mdp: req.body.mdp,
        ajouter_le: req.body.ajouter_le,
        ajouter_par: req.body.ajouter_par,
        modifier_le: req.body.modifier_le,
        modifier_par: req.body.modifier_par,
        supprimer_le: req.body.supprimer_le,
        supprimer_par: req.body.supprimer_par
    }
    models.technician.update(updatedtechnician,{where : {id:id}}).then(result => {
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

    models.technician.destroy({
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