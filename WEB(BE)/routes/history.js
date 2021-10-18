const express = require('express');
const router = express.Router();
const History = require('../models/history');
const Product = require('../models/product');


// 입출고내역
router.get('/', function(req,res){
    History.find({}, function(err, history){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json(history);
    })
});

// 아두이노에서 받은 데이터 DB에 저장
router.post('/add', async function(req,res){
	const history = new History();
	history.NIIN = req.body.NIIN;
	history.productName = req.body.productName;
	history.storageName = req.body.storageName;
	history.state = req.body.state;
	history.date = req.body.date;
	
	const historyCheck = await history.findOne({NIIN:history.NIIN});
	if (historyCheck == null){
		history.save(function(err){
			if(err){
				res.json({result: 0, error:err});
			}
			res.json({result: 1, history:history});
		});			
	} else {
		res.json({result:0, error:"history already exists"});
	}
});

module.exports = router;