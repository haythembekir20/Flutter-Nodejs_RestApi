'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class tache extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  tache.init({
    id_client: DataTypes.INTEGER,
    id_tech: DataTypes.INTEGER,
    etat: DataTypes.STRING,
    date_creation: DataTypes.DATE,
    vmc: DataTypes.INTEGER,
    chauffage: DataTypes.INTEGER,
    climatisation: DataTypes.INTEGER,
    plomberie: DataTypes.INTEGER,
    dapannage: DataTypes.INTEGER,
    livraison: DataTypes.INTEGER,
    travaux: DataTypes.INTEGER,
    ajouter_le: DataTypes.DATE,
    ajouter_par: DataTypes.STRING,
    modifier_le: DataTypes.DATE,
    modifier_par: DataTypes.STRING,
    supprimer_le: DataTypes.DATE,
    supprimer_par: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'tache',
  });
  return tache;
};