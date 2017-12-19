// Uses Promises so works on node >=4

const util = require('util');
const execFile = require('child_process').execFile;

function getUpdateCommands() {

  return new Promise(function(resolve, reject) {

    execFile('ncu', ['-g'], (err, stdout, stderr) => {
      
      if (err) { reject(err); }

      console.log(stdout);

      resolve(createUpdateCommands(stdout));
    });
  });
}

function createUpdateCommands(modulesToUpdate) {

  const packagesAreUpToDate = 'All global packages are up-to-date :)';

  return modulesToUpdate.split('\n')
    .filter(name => (name) ? name : false)
    .filter(name => name !== packagesAreUpToDate)
    .map(name => ['npm', ['install', '-g', name.split(' ')[1]]]);  
}

function buildUpdateCommand(command) {

  return new Promise(function(resolve, reject) {

    execFile(command[0], command[1], (err, stdout, stderr) => {

      if (err) { reject(err); }

      resolve();
    });
  });
}

function doUpdate() {
  
  getUpdateCommands()
  .then(commands => {

    Promise.all(commands.map(command => buildUpdateCommand(command)))
    .then(modules => console.log(`Updated ${modules.length} package(s)`))
    .catch(err => console.log(err));
  });
}

doUpdate();
