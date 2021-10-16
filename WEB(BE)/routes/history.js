const express = require('express');
const router = express.Router();
const History = require('../models/history');



// 입출고내역
router.get('/', function(req,res){
    History.find({}, function(err, history){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json(history);
    })
});

module.exports = router;