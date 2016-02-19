var express = require('express');
var app = express();

app.use(function (req, res) {

  res.redirect('http://192.168.16.251:8080/index.html');

});

app.listen(8080);
