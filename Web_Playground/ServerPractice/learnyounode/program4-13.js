var fs = require('fs');
var filepath = process.argv.slice(2).toString();

fs.readFile(filepath, function(err, data) {
  if (err) throw err;
  var text = data.toString();
  var textArr = text.split('\n');
  var length = textArr.length;
  console.log(length - 1);
});
