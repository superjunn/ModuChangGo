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

// 아두이노에서 받은 데이터 DB에 저장 (입고)
router.post('/add', async function(req,res){
	const history = new History();
	history.NIIN = req.body.NIIN;
	history.productName = req.body.productName;
	history.storageName = req.body.storageName;
	history.state = req.body.state;
	history.date = req.body.date;
	
	const product = new Product();
	product.NIIN = req.body.NIIN;
	product.productName = req.body.productName;
	product.storageName = req.body.storageName;
	
	const productCheck = await Product.findOne({NIIN:product.NIIN});
	if (productCheck == null){
		product.save(function(err){
			if(err){
				res.json({result: 0, error:err});
			}
			res.json({result: 1, product:product});
		});			
	} else {
		res.json({result:0, error:"product already exists"});
	}
	
	const historyCheck = await History.find({NIIN:history.NIIN}).sort({date:-1}).exec(function(err, history){
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
						res.json({result: 1, history:history[0]});												
					}	
			}

			
		});	
});

// 아두이노에서 받은 데이터 DB 삭제 (출고)
router.delete('/:NIIN', function(req, res){
    Product.deleteOne({ NIIN: req.params.NIIN }, function(err, output){
        if(err) return res.status(500).json({ error: "delete failed"});
		if(!output.deletedCount) return res.status(404).json({ error: 'product not found' });
        res.json({deleteProduct:req.params.NIIN, result: 1});
    })
});


module.exports = router;