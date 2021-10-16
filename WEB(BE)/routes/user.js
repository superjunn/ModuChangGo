const express = require('express');
const router = express.Router();
const User = require('../models/users');
const userController = require('./controllers/userControllers');
const verifyToken = require('./middlewares/authorization');

/* GET users listing. */
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


module.exports = router;
