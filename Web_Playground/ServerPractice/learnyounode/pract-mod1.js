var fs = require('fs');
var path = require('path');

module.exports = function (directory, extension, callback) {
  // console.log();
  fs.readdir(directory function(err, list){
    //Call back here?

      list.foreach(function(){
        if (path.extname(file) === '.' + extension ) {
          console.log(file);
        }
      });
  });
};

/*

Use this to complete this once you have time...

Official Solution.
var fs = require('fs')
var path = require('path')

fs.readdir(process.argv[2], function (err, list) {
list.forEach(function (file) {
if (path.extname(file) === '.' + process.argv[3])
console.log(file)
})
})
*/
