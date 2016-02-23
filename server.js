var express = require('express');
var app = express();

app.use(function (req, res) {

  res.redirect('http://www.google.com');

});

app.listen(8080, function () {
  console.log('JXCORE proxy is running on port 8080.');
  console.log('Your request will now redirect to - www.google.com');
});
