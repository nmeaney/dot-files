#! /usr/bin/env node

const fs = require('fs');
const { promisify } = require('util');

const readDirAsync = promisify(fs.readdir);
const filePath = process.argv[2] || process.cwd();

readDirAsync(filePath, { encoding: 'utf8' })
.then(files => {

  files
  .filter(file => !/^[\040-\177]*$/.test(file))
  .forEach(nonAsciiFile => console.log(nonAsciiFile));
})
.catch(err => {

  console.log('ERROR:', err);
});

