// Uses asynch-await so only works on node >=8

const util = require('util');
const execFile = util.promisify(require('child_process').execFile);

const packagesUpToDate = 'All global packages are up-to-date :)';

async function getModulesToUpdate() {

  const { stdout: modulesToUpdate } = await execFile('ncu', ['-g']);

  console.log(modulesToUpdate);

  return modulesToUpdate.split('\n')
    .filter(name => (name) ? name : false)
    .filter(name => name !== packagesUpToDate)
    .map(name => ['npm', ['install', '-g', name.split(' ')[1]]]);
}

async function updateModule(command) {

  return await execFile(command[0], command[1]);
}

getModulesToUpdate()
.then(modules => modules.forEach(command => updateModule))
.catch(err => console.log(err));
