#! /usr/bin/env node

const fs = require('fs');
const { promisify } = require('util');

const readDirAsync = promisify(fs.readdir);
const filePath = process.argv[2] || process.cwd();

readDirAsync(filePath, { encoding: 'utf8' })
.then(files => {

  files
  .filter(file => {
  
    return !/^[\040-\177]*$/.test(file);
  })
  .forEach(nonAsciiName => console.log(nonAsciiName));
})
.catch(err => {

  console.log('ERROR:', err);
});

