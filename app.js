var createError = require('http-errors');
var express = require('express');
var path = require('path');
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const http = require("http");
const session = require("express-session");
const MemoryStore = require("memorystore")(session);


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var parkingRouter = require('./routes/parking');
var pickupRouter = require('./routes/pickup');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
app.use(cookieParser());

app.use(
  session({
      secret: "secret key",
      resave: false,
      saveUninitialized: true,
      store: new MemoryStore({
          checkPeriod: 86400000, // 24 hours (= 24 * 60 * 60 * 1000 ms)
      }),
      cookie: { maxAge: 86400000 },
  })
);


app.use('/', indexRouter);
app.use('/users', usersRouter);


var regRouter = require('./routes/reg');
app.use('/reg', regRouter);

var regpopupRouter = require('./routes/reg');
app.use('/regpopup', regpopupRouter);

var mainRouter = require('./routes/main');
app.use('/main', mainRouter);

var parkingRouter = require('./routes/parking');
app.use('/parking', parkingRouter);

var parking2Router = require('./routes/parking2');
app.use('/parking2', parking2Router);
//app.use('/tracking/firstTime', parking2Router);

var parkingloc = require('./routes/parkingloc');
app.use('/parkingloc', parkingloc);

var pickupRouter = require('./routes/pickup');
app.use('/pickup', pickupRouter);

var pickup2Router = require('./routes/pickup2');
app.use('/pickup2', pickup2Router);

//var backRouter = require('./routes/back');
//app.use('/back', backRouter);



// 쿠키



// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
