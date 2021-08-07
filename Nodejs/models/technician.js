'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class technician extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  technician.init({
    dern_cnx: DataTypes.STRING,
    nom: DataTypes.STRING,
    prenom: DataTypes.STRING,
    email: DataTypes.STRING,
    tel: DataTypes.INTEGER,
    adresse: DataTypes.STRING,
    desactiver: DataTypes.INTEGER,
    login: DataTypes.STRING,
    mdp: DataTypes.STRING,
    ajouter_le: DataTypes.DATE,
    ajouter_par: DataTypes.STRING,
    modifier_le: DataTypes.DATE,
    modifier_par: DataTypes.STRING,
    supprimer_le: DataTypes.DATE,
    supprimer_par: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'technician',
  });
  return technician;
};