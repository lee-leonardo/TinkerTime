var sys = require('sys')
  , http = require('http')
  , portListen = 8080;

http.createServer(function (request, response) {
  console.log("I got kicked");
  response.writeHeader(200, {"Content-Type": "text/plain"});
  response.write("Hello, World!");
  response.end();
}).listen(portListen);
console.log("Server is Running on 8080");
