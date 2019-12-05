'use strict';
module.exports = (sequelize, DataTypes) => {
  const Shipmentdetails = sequelize.define('Shipmentdetails', {
    shipment_id: DataTypes.INTEGER,
    shipment_name: DataTypes.STRING,
    shipment_location: DataTypes.STRING,
    shipped_date: DataTypes.DATE,
    shipment_image: DataTypes.BLOB,
    created_date: DataTypes.DATE,
    updated_date: DataTypes.DATE
  }, {});
  Shipmentdetails.associate = function(models) {
    // associations can be defined here
  };
  return Shipmentdetails;
};