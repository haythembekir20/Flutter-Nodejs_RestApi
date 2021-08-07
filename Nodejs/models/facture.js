'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class facture extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  facture.init({
    date_envoie: DataTypes.DATE,
    date_paiement: DataTypes.DATE,
    modalite_payment: DataTypes.STRING,
    total_ht: DataTypes.FLOAT,
    total_ttc: DataTypes.FLOAT,
    tva: DataTypes.FLOAT,
    remise: DataTypes.FLOAT,
    a_payer: DataTypes.FLOAT,
    ajouter_le: DataTypes.DATE,
    ajouter_par: DataTypes.STRING,
    modifier_le: DataTypes.DATE,
    modifier_par: DataTypes.STRING,
    supprimer_le: DataTypes.DATE,
    supprimer_par: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'facture',
  });
  return facture;
};