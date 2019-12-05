'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('Shipmentdetails', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      shipment_id: {
        type: Sequelize.INTEGER
      },
      shipment_name: {
        type: Sequelize.STRING
      },
      shipment_location: {
        type: Sequelize.STRING
      },
      shipped_date: {
        type: Sequelize.DATE
      },
      shipment_image: {
        type: Sequelize.BLOB
      },
      created_date: {
        type: Sequelize.DATE
      },
      updated_date: {
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('Shipmentdetails');
  }
};