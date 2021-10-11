const jwt = require('jsonwebtoken');
const jwt_info = require('jwt_info.json');
const SECRET_KEY = jwt_info.key;

const verifyToken = (req, res, next) => {
    try {
        const clientToken = req.cookies.user;
        const decoded = jwt.verify(clientToken, SECRET_KEY);
       if (decoded) {
           res.locals.userId = decoded.user_id;
           next();
       } else {
           res.status(401).json({result:0, error: 'unauthorized' });
       }
    } catch (err) {
        res.status(401).json({result:0, error: 'token expired' });
    }
};

module.exports = { verifyToken };