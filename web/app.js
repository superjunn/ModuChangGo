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


// 라즈베리파이에서 서버로 json형태의 데이터를 request body에 담아 보낸다.
// 보낸 데이터를 데이터베이스로 보낸다.
// DB에 저장된 데이터와 중복되지 않으면 저장 / 중복되면 Error response
// 성공 : 성공알림 / 실패 : 실패알림(실패이유)

app.post('/profile', (req, res) => {
console.log(req.body); // body의 데이터를 요청 
const user = {
    name: req.body.name,
    hobby: req.body.hobby
	}
    res.send(user)
})











// // catch 404 and forward to error handler
// app.use(function(req, res, next) {
//   const err = new Error('Not Found');
//   err.status = 404;
//   next(err);
// });

// // error handler
// app.use(function(err, req, res, next) {
//   // set locals, only providing error in development
//   res.locals.message = err.message;
//   res.locals.error = req.app.get('env') === 'development' ? err : {};

//   // render the error page
//   res.status(err.status || 500);
//   res.render('error');
// });

app.listen(process.env.PORT || 3000, () => console.log('Example app listening on port 3000!'));

module.exports = app;
