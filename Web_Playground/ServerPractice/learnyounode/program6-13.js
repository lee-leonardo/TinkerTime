var fs = require('fs');
var path = require('path');
var practice = require('./pract-mod.js'); //.js can be omitted.

var arguments = process.argv.slice(2);

practice(arguments[0], arguments[1], function(){
  list.foreach(function(){
    
  });
});
