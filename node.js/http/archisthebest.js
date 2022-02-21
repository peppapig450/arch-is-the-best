var http = require('http');

http.createServer(function (req, res) {
  res.write('Arch is the best!');
  res.end();
}).listen(8080);
