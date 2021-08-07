'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('taches', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      id_client: {
        type: Sequelize.INTEGER
      },
      id_tech: {
        type: Sequelize.INTEGER
      },
      etat: {
        type: Sequelize.STRING
      },
      date_creation: {
        type: Sequelize.DATE
      },
      vmc: {
        type: Sequelize.INTEGER
      },
      chauffage: {
        type: Sequelize.INTEGER
      },
      climatisation: {
        type: Sequelize.INTEGER
      },
      plomberie: {
        type: Sequelize.INTEGER
      },
      dapannage: {
        type: Sequelize.INTEGER
      },
      livraison: {
        type: Sequelize.INTEGER
      },
      travaux: {
        type: Sequelize.INTEGER
      },
      ajouter_le: {
        type: Sequelize.DATE
      },
      ajouter_par: {
        type: Sequelize.STRING
      },
      modifier_le: {
        type: Sequelize.DATE
      },
      modifier_par: {
        type: Sequelize.STRING
      },
      supprimer_le: {
        type: Sequelize.DATE
      },
      supprimer_par: {
        type: Sequelize.STRING
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
    await queryInterface.dropTable('taches');
  }
};