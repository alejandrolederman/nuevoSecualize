const DB = require ('../database/models/payment');
// const Op = DB.Sequelize.Op;
var express = require('express');
var router = express.Router();
// var controller = require('../controller')
/* GET home page. */
router.get('/',(req, res)=>{
  // res.send("hola")
  DB.Pago
  .findAll()
  .then(pagos =>{
      return res.json(pagos)
  })
}
);

module.exports = router;
