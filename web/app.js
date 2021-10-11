const express = require('express');
const logger = require('morgan');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const db_info = require('./config/db_info.json');
const port = 3000;
const app = express();

const userController = require('./controllers/userControllers');
const { verifyToken } = require('./middlewares/authorization');

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// mongodb 연결
const url = `mongodb+srv://${db_info.id}:${db_info.password}@cluster0.xql9i.mongodb.net/${db_info.database}?retryWrites=true&w=majority`

mongoose.connect({
useNewUrlParser: true,
useFindAndModify: false
});

const db = mongoose.connection;
db.on('error', console.error);
db.once('open', function(){
    console.log("Connected to mongodb server");
});

mongoose.connect(url);

// models import
const Product = require('./models/product');
const History = require('./models/history');
const User = require('./models/users');
const Storage = require('./models/storages');

// 로그인
app.post('/login', userController.signIn);

// 회원가입
app.post('/join', userController.signUp);

// 창고 추가
app.post('/storages/add', function(req, res){
    var storage = new Storage();

    storage.storageName = req.body.storageName;
    storage.location = req.body.location;
    storage.manager = req.body.manager;
    storage.item = req.body.item;

    storage.save(function(err){
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
    History.find({}, function(err, history){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json(history);
    })
});

//창고보기
app.get('/storages', verifyToken, function(req,res){
    Storage.find({}, function(err, storage){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json(storage);
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
app.put('/storages/edit/:storageName', function(req, res){
    Storage.find({storageName: req.params.storageName}, function(err, storage){
        if(err) return res.status(500).json({ error: 'database failure' });
        if(!storsge) return res.status(404).json({ error: 'storage not found' });

        if(req.body.storageName) storage.storageName = req.body.storageName;
        if(req.body.location) storage.location = req.body.location;
        if(req.body.manager) storage.manager = req.body.manager;
        if(req.body.image) storage.image = req.body.image;

        storage.save(function(err){
            if(err) res.status(500).json({error: 'failed to update'});
            res.json({result: 1});
        });

    });

});

//창고 삭제
app.delete('/storages/:storageName', function(req, res){
    Storage.remove({ storageName: req.params.storageName }, function(err, output){
        if(err) return res.status(500).json({ error: "delete failed"})

        res.json({result: 1});
    })
});

app.listen(port, () => {
    console.log(`Server is running at ${port}`);
});