var fs = require('fs');
var path = require('path');

module.exports = function (directory, extension, callback) {
  // console.log();
  fs.readdir(directory, function(err, data){
    // console.log("Error: " + err);
    // console.log("List: " + list);
    if (typeof callback === "function") {
      if (err) {
        return callback(err);
      } else {
        // console.log(data);
        // console.log("Data length: "+data.length);
        callback(null, data);
      }
    }
  });
};
