var fs = require('fs');
var path = require('path');

var filePath = process.argv.slice(2,3).toString();
var fileType = process.argv.slice(3).toString();

// console.log("File Path: "+ filePath);
// console.log("File Type: "+ fileType);

fs.readdir(filePath, function(err, files) {
  if (err) { throw err; }
  console.log("File List: "+files);
  for (entry in files) {
    // console.log(files[entry]);
    // console.log(path.extname(files[entry]));
    if (path.extname(files[entry]) == ("."+ fileType)) {
      console.log(files[entry]);
    }
  }
});


/*
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
