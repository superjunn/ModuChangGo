const express = require('express');
const path = require('path');
const logger = require('morgan');
const bodyParser = require('body-parser');
const port = 3000;

const index = require('./routes/index');
const users = require('./routes/users');

const app = express();
const mongoose = require('mongoose');
const db_info = require('./config/db_info.json');
// 비밀정보이므로 별도 파일 만든 후 참조 후 .gitignore 추가.
const url = `mongodb+srv://${db_info.id}:${db_info.password}@cluster0.xql9i.mongodb.net/${db_info.database}?retryWrites=true&w=majority`

mongoose.connect({
useNewUrlParser: true,
useFindAndModify: false
});

const db = mongoose.connection;
db.on('error', console.error);
db.once('open', function(){
    // CONNECTED TO MONGODB SERVER
    console.log("Connected to mongodb server");
});

mongoose.connect(url);

const Product = require('./models/product');
const History = require('./models/history');

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
// app.use(express.static(path.join(__dirname, 'public')));

// 창고 추가
app.post('/storages/add', function(req, res){
    var product = new Product();
    product.NIIN = req.body.NIIN;
    product.productName = req.body.productName;
    product.storageName = req.body.storageName;
    product.location = req.body.location;
    product.state = "입고";

    product.save(function(err){
        if(err){
            console.error(err);
            res.json({result: 0});
            return;
        }

        res.json({result: 1});

    });
});

// 입출고내역
app.get('/history', function(req,res){
    Product.find({}, function(err, products){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json(products);
    })
});

// 창고보기
app.get('/storages', function(req,res){
    Product.find({}, 'storageName location image', function(err, storages){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json([storages]);
    })
});

//창고 자세히 보기
app.get('/storages/:storageName', function(req, res){
    Product.find({storageName: req.params.storageName}, function(err, product){
        if(err) return res.status(500).json({error: err});
        if(!product) return res.status(404).json({error: 'product not found'});
        res.json(product);
    })
});

//창고 수정
app.put('/storages/edit/:product_id', function(req, res){
    Product.findById(req.params.product_id, function(err, product){
        if(err) return res.status(500).json({ error: 'database failure' });
        if(!product) return res.status(404).json({ error: 'product not found' });


        if(req.body.NIIN) product.NIIN = req.body.NIIN;
        if(req.body.productName) product.productName = req.body.productName;
        if(req.body.storageName)product.storageName = req.body.storageName;
        if(req.body.location) product.location = req.body.location;

        product.save(function(err){
            if(err) res.status(500).json({error: 'failed to update'});
            res.json({message: 'product updated'});
            res.redirect('/storages');
        });

    });

});


//창고 삭제
app.delete('/storages/:product_id', function(req, res){
    Product.remove({ NIIN: req.params.product_id }, function(err, output){
        if(err) return res.status(500).json({ error: "database failure" });

        /* ( SINCE DELETE OPERATION IS IDEMPOTENT, NO NEED TO SPECIFY )
        if(!output.result.n) return res.status(404).json({ error: "product not found" });
        res.json({ message: "product deleted" });
        */

        res.status(204).end();
        res.redirect('/storages');
    })
});

app.listen(port, () => {
    console.log(`Server is running at ${port}`);
});
