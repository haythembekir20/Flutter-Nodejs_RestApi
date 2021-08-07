'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class intervention extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  intervention.init({
    id_tache: DataTypes.INTEGER,
    adresse: DataTypes.STRING,
    pdf_name: DataTypes.STRING,
    date_deb: DataTypes.DATE,
    date_fin: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'intervention',
  });
  return intervention;
};