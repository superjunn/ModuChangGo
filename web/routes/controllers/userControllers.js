const User = require('../../models/users');
const bcrypt = require("bcryptjs");
const jwt = require('jsonwebtoken');
const jwt_info = require('../../config/jwt_info.json');
const SECRET_KEY = jwt_info.key;

// jwt 토큰 생성
const createToken = (userId) => {
  const token = jwt.sign({ _id: userId.toString() }, SECRET_KEY, {
            expiresIn: '1h',
            issuer: "modu",
            subject: "user_info"
        });
  return token;
};


// user 정보 db에 저장
const signUp = async function (req, res, next) {
    try {

        const user = new User();
        user.user_id = req.body.user_id;
        user.user_army = req.body.user_army;
        bcrypt.hash(req.body.user_password, 10, function(err, hash) {
            if(err) res.json({result:0, error:"encryption error"});
            else
            {
              user.password = hash;
              user.save();
              res.status(201).json({result: 1});
            }
        });


    } catch (err) {
        console.error(err);
        next(err);
    }
};

// 로그인
const signIn = async (req, res, next) => {
  try {

    const id = req.body.user_id;
    const password = req.body.user_password;

    if (!id || !password) return res.json({result: 0, error: "wrong input"});

    const user = await User.findOne({ user_id:id });

    if (!user) return res.json({result: 0, error: "no user data"});
    // console.log(typeof password);
    // console.log(user);
    //console.log(typeof String(user.password));
    const passwordCheck = await bcrypt.compare(password, user.password);

    if (!passwordCheck) return res.json({result: 0, error: "wrong password"});
    const token = createToken(id);
    res.cookie('user', token, { httpOnly: true, maxAge: 24 * 60 * 60 * 1000 })


  } catch (err) {
    next(err);
  }
};


module.exports = {signIn, signUp};