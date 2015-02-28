var sys = require('sys')
  , http = require('http')
  , path = require('path')
  , url = require('url')
  , filesys = require('fs')
  , portListen = 8080;

http.createServer(function (request, response) {
  var thePath = url.parse(request.url).pathname;
  var fullPath = path.join(process.cwd(), thePath);
  path.exists(fullPath, function (exists){
    if (!exists) {
      response.writeHeader(404, {"Content-Type":'text/plain'});
      response.write("404 Not Found\n");
      response.end();
    } else {
        filesys.readFile(fullPath, "binary", function (err, file){
          if (err) {
            reponse.writeHeader(500, {"Content-Type": "text/plain"});
            response.write(err+"\n");
            response.end();
          } else {
            response.writeHeader(200);
            response.write(file, "binary");
            response.end();
          }
        });
    }
  });
}).listen(portListen);
console.log("Server is Running on "+portListen);
