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

	const historyCheck = await history.find({NIIN:history.NIIN}).sort({date:-1}).exec(function(err, history){
		if (req.body.state === "입고"){
			if (history[0].state === "입고"){
				res.json({result:0, error:"product already exists"});
			}	else {
				history.save();
				res.json({result: 1, history:history[0]});				
			}		
		} else {
			if (history[0].state === "출고"){
				res.json({result:0, error:"product already not exists"});
			}	else {
				history.save();
				res.json({result: 1, history:history[0]});				
			}			
		}

			
		});	
});

module.exports = router;