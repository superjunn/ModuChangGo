const express = require('express');
const logger = require('morgan');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const cookieParser = require('cookie-parser');
const db_info = require('./config/db_info.json');
const port = 3000;
const app = express();

const router = require('router');
const storageRouter = require('./routes/storage');
const userRouter = require('./routes/user');
const historyRouter = require('./routes/history');

app.use(logger('dev'));
app.use(cookieParser());
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// routing pages
app.use('/storages', storageRouter);
app.use('/user', userRouter);
app.use('/history', historyRouter);


// mongodb connect
const url = `mongodb+srv://${db_info.id}:${db_info.password}@cluster0.xql9i.mongodb.net/${db_info.database}?retryWrites=true&w=majority`

mongoose.connect(url, {
useNewUrlParser: true
});

const db = mongoose.connection;
db.on('error', console.error);
db.once('open', function(){
    console.log("Connected to mongodb server");
});


app.listen(port, () => {
    console.log(`Server is running at ${port}`);
});