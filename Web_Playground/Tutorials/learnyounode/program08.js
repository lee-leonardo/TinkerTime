var fs = require('fs');
var http = require('http');

var output = "";

http.get(process.argv[2], function(response) {
  response.setEncoding('utf8');
  response.on('err', console.error);
  response.on('data', function(data){
    output = output + data.toString();
    // console.log(data);
  });

  response.on('end', function(){
    console.log(output.length);
    console.log(output);
    output = ""; //I don't think this is necessary...
  });
});

/*
//Official Solution.
var http = require('http')
var bl = require('bl')

http.get(process.argv[2], function (response) {
response.pipe(bl(function (err, data) {
if (err)
return console.error(err)
data = data.toString()
console.log(data.length)
console.log(data)
}))
})

*/
