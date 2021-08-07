'use strict';
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('factures', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      date_envoie: {
        type: Sequelize.DATE
      },
      date_paiement: {
        type: Sequelize.DATE
      },
      modalite_payment: {
        type: Sequelize.STRING
      },
      total_ht: {
        type: Sequelize.FLOAT
      },
      total_ttc: {
        type: Sequelize.FLOAT
      },
      tva: {
        type: Sequelize.FLOAT
      },
      remise: {
        type: Sequelize.FLOAT
      },
      a_payer: {
        type: Sequelize.FLOAT
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
    await queryInterface.dropTable('factures');
  }
};