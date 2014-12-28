var fs = require('fs');
var http = require('http');

http.get(process.argv[2], function(response){
  // console.log(response);
  response.setEncoding("utf8");
  response.on("data", function(data){
    //This listens on "data" events from the GET request.
    console.log(data);
  });
});

/*
//Official Solution:
  var http = require('http')

  http.get(process.argv[2], function (response) {
  response.setEncoding('utf8')
  response.on('data', console.log)
  response.on('error', console.error)
  })
*/
