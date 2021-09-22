const express = require('express');
const path = require('path');
const logger = require('morgan');
const bodyParser = require('body-parser');

const index = require('./routes/index');
const users = require('./routes/users');

const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');


app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', index);
app.use('/users', users);

// DB connection

const mysql = require('mysql');

const getConnection = require('./config/database');


// MySQL에서 modu_chango 라는 데이터베이스에 chango_list 라는 table 생성

// CREATE TABLE IF NOT EXISTS `chango_list` (
//   `NIIN` varchar(20) NOT NULL,
//   `productName` varchar(50) NOT NULL,
//   `location` varchar(50) NOT NULL,
//	 `mode` int(3) UNSIGNED NOT NULL,
//   PRIMARY KEY (`NIIN`)
// ) DEFAULT CHARSET=utf8;


// 데이터 송수신 페이지
app.post('/product', (req, res) => {
console.log(req.body);
const product = {
    NIIN: req.body.NIIN,
    productName: req.body.productName,
	location: req.body.location,
	mode: req.body.mode
	}
	if (product){
		if (product.mode == 1){ // 입고
			res.send(product);

			getConnection((conn) => {
			const sql = 'INSERT INTO chango_list VALUES (?, ?, ?)';
			const params = [product.NIIN, product.productName, product.location];
			conn.query(sql, params, function(err) {
				conn.release();
				if(err) console.log('query is not excuted. insert fail...\n' + err);
				else res.redirect('/main');
				});
			})
		} else { // 출고
			res.send(product);

			getConnection((conn) => {
			const sql = 'DELETE FROM chango_list WHERE NIIN=?';
			const params = [product.NIIN];
			conn.query(sql, params, function(err) {
				conn.release();
				if(err) {
					alert('query is not excuted. delete fail...\n' + err);
					res.redirect('/product');
				} else res.redirect('/main');
				});
			})		
		}		
	}
    
	
})


app.listen(process.env.PORT || 3000, () => console.log('Example app listening on port 3000!'));

module.exports = app;
