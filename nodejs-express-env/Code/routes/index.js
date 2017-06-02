// Get the Env Config ..
require('dotenv').config();

var express = require('express');
var router = express.Router();
var util = require('util');

/* GET home page. */
router.get('/', function(req, res, next) {
  console.error(util.inspect(process.env));
  res.render('index', { 
	title: 'Express',
	db_type: process.env.DB_TYPE,
	db_host: process.env.DB_HOST,
	db_password: process.env.DB_PASSWORD 
  });
});

module.exports = router;
