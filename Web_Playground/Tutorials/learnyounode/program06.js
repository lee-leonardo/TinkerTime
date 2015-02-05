var fs = require('fs');
var path = require('path');
var practice = require('./mod_pract1.js'); //.js can be omitted.

var arguments = process.argv.slice(2), directory = arguments[0], extension = arguments[1];
// console.log(arguments);

practice(directory, extension, function(err, list) {
  // console.log(err);
  // console.log(list);
  // console.log("Received data: "+list.length);
  list.forEach(function(file){
    if (path.extname(file) === '.'+extension) {
      console.log(file);
    }
  });
});
