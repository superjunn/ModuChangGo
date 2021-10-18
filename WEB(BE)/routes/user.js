const express = require('express');
const router = express.Router();
const User = require('../models/users');
const userController = require('./controllers/userControllers');
const verifyToken = require('./middlewares/authorization');

router.get('/', function(req,res){
    User.find({}, function(err, user){
        if(err) return res.status(500).send({error: 'database failure'});
        res.json(user);		
    })
});

// 로그인
router.post('/login', userController.signIn);

// 회원가입
router.post('/join', userController.signUp);

// 회원정보 수정
router.put('/edit', function(req, res){
    User.updateOne({user_id: req.body.user_id }, { $set: req.body }, function(err, output){
        if(err) res.status(500).json({ error: 'database failure' });
        if(!output.modifiedCount) return res.status(404).json({ error: 'storage not found' });
        res.json( {updateUser:req.body.user_id, result: 1} );
        }
    );
});

module.exports = router;
