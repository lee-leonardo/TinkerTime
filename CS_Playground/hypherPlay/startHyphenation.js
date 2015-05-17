var Hypher = require('hypher'),
    english = require('hyphenation.en-us'),
    h = new Hypher(english);

console.log(h.hyphenate('platonic'));
console.log(h.hyphenateText("This is going to return via the string."));
console.log(h.hyphenateText("This-is-text-pre-hyphenated"));

//Not sure how to handle this yest.
console.log(h.hyphenateText("This has \n to see what happens."));
