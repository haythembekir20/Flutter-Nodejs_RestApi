const models = require('../models');


function save (req,res) {
    const facture_intervention = {
        
        id_inter: req.body.id_inter,
        id_facture: req.body.id_facture
        

    }
    
    models.facture_intervention.create(facture_intervention).then(result =>{
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
    models.facture_intervention.findByPk(id).then(result => {
        res.status(200).json(result);
    }).catch(error => {
        res.status(500).json({
            message:"Something went wrong !"
        })
    });
}

function index(req,res){
models.facture_intervention.findAll().then(result => {
    res.status(200).json(result);
}).catch(error=> {
    res.status(500).json({
        message:"Something Wnet Wrong"
    });
});
}

function update(req,res){
    const id = req.params.id;
    const updatedfacture_intervention = {
        
        id_inter: req.body.id_inter,
        id_facture: req.body.id_facture
    }
    models.facture_intervention.update(updatedfacture_intervention,{where : {id:id}}).then(result => {
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

    models.facture_intervention.destroy({
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