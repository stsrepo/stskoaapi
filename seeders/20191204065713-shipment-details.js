'use strict';

module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert('Shipmentdetails', [{
      shipment_id: Sequelize.NUMBER,
      shipment_name: Sequelize.STRING,
      shipment_location: Sequelize.STRING,
      shipped_date: Sequelize.DATE,
      created_date: new Date(),
      updatedAt: new Date(),
      createdAt: new Date(),
      updatedAt: new Date()
 
    }], {});
    /*
      Add altering commands here.
      Return a promise to correctly handle asynchronicity.

      Example:
      return queryInterface.bulkInsert('People', [{
        name: 'John Doe',
        isBetaMember: false
      }], {});
    */
  },

  down: (queryInterface, Sequelize) => {
    /*
      Add reverting commands here.
      Return a promise to correctly handle asynchronicity.

      Example:
      return queryInterface.bulkDelete('People', null, {});
    */
  }
};
