'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class facture_intervention extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  facture_intervention.init({
    id_inter: DataTypes.INTEGER,
    id_facture: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'facture_intervention',
  });
  return facture_intervention;
};