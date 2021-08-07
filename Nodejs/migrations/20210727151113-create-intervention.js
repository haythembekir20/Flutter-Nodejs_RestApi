'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('interventions', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      id_tache: {
        type: Sequelize.INTEGER
      },
      adresse: {
        type: Sequelize.STRING
      },
      pdf_name: {
        type: Sequelize.STRING
      },
      date_deb: {
        type: Sequelize.DATE
      },
      date_fin: {
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('interventions');
  }
};