// Uses asynch-await so only works on node >=8

const util = require('util');
const execFile = util.promisify(require('child_process').execFile);

async function getModulesToUpdate() {

  const { stdout: modulesToUpdate } = await execFile('ncu', ['-g']);

  console.log(modulesToUpdate);

  return createUpdateCommands(modulesToUpdate);
}

function createUpdateCommands(modulesToUpdate) {

  const packagesAreUpToDate = 'All global packages are up-to-date :)';

  return modulesToUpdate.split('\n')
    .filter(name => (name) ? name : false)
    .filter(name => name !== packagesAreUpToDate)
    .map(name => ['npm', ['install', '-g', name.split(' ')[1]]]);  
}

async function updateModule(command) {

  return await execFile(command[0], command[1]);
}

getModulesToUpdate()
.then(modules => modules.forEach(command => updateModule(command)))
.catch(err => console.log(err));
