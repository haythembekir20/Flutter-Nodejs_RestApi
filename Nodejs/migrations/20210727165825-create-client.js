'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('clients', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      id_client: {
        type: Sequelize.INTEGER
      },
      siteweb: {
        type: Sequelize.STRING
      },
      num_tva: {
        type: Sequelize.INTEGER
      },
      raison: {
        type: Sequelize.STRING
      },
      nom: {
        type: Sequelize.STRING
      },
      prenom: {
        type: Sequelize.STRING
      },
      email: {
        type: Sequelize.STRING
      },
      tel: {
        type: Sequelize.INTEGER
      },
      adresse: {
        type: Sequelize.STRING
      },
      desactiver: {
        type: Sequelize.INTEGER
      },
      login: {
        type: Sequelize.STRING
      },
      mdp: {
        type: Sequelize.STRING
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
    await queryInterface.dropTable('clients');
  }
};