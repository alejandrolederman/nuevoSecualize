module.exports = (sequelize, dataTypes) => {
    let alias = "Pago";
    let cols = {
      id: {
        type: dataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      object: {
        type: dataTypes.STRING(50),
      },
      description: {
        type: dataTypes.STRING(50),
  
      },
      billed_hours: {
        type: dataTypes.DECIMAL,
      },
      billed_at: {
        type: dataTypes.STRING(50),
  
      },
      billing_currency: {
        type: dataTypes.STRING(50),
  
      },
      billed_amount: {
        type: dataTypes.DECIMAL,
      },
      amount:{
        type: dataTypes.INTEGER,
  
      },
      currency: {
        type: dataTypes.STRING(50),
  
      },
      needs_exchange: {
        type: dataTypes.BOOLEAN,
      },
      echange_currency: {
        type: dataTypes.STRING(50),
      },
      
    };
  
    let config = {
      tableName: "products",
      timestamps: false,
    };
  
    const Pago = sequelize.define(alias, cols, config);
    return Pago;
};