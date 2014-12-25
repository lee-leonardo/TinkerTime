var fs = require('fs');
var filepath = process.argv.slice(2).toString();
// console.log(typeof filepath);
var file = fs.readFileSync(filepath).toString();
// console.log(file);
var newLines = file.split('\n');
// console.log(newLines);
var length = newLines.length;
// console.log(length);
console.log(length - 1);

/*
    var fs = require('fs')

    var contents = fs.readFileSync(process.argv[2])
    var lines = contents.toString().split('\n').length - 1
    console.log(lines)

    // note you can avoid the .toString() by passing 'utf8' as the
    // second argument to readFileSync, then you'll get a String!
    //
    // fs.readFileSync(process.argv[2], 'utf8').split('\n').length - 1
*/
