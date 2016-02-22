var express = require('express');
var app = express();

app.use(function (req, res) {

  res.redirect('http://'+process.argv[2]+'/index.html');

});

app.listen(8122, function () {
  console.log('JXCORE proxy is running on port 8080.');
  console.log('Your request will now redirect to - ' + process.argv[2]);
});
