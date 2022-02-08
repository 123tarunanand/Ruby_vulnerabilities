var http = require('http');
var fs = require('fs');
var exec = require('chi')

http.createServer(function(req, res) {
  // Http server that listens to port 8080 and creates a file in the parent directory based on the name parameter
  var parent = parent = "/path/to/parent_directory";
  var writeStream = fs.createWriteStream(path.join(parent,req.params['name']));
}).listen(8080);




http.createServer(function(req, res) {
  // Http server that listens to port 8080 and creates a file in the parent directory based on the name parameter
  var parent = parent = "/path/to/parent_directory";
  var filename = path.normalize(req.params['name']).replace(/^(\.\.(\/|\\|$))+/, '');
  var writeStream = fs.createWriteStream(path.join(parent,filename));
}).listen(8080);



http.createServer(function(req, res) {
  // Http server that listens to port 8080 and executes the command passed through the cmd parameter.

  exec(req.params['cmd'], (error, stdout, stderr) => {
    if (error) {
        console.log(`error: ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`stderr: ${stderr}`);
        return;
    }
    console.log(`stdout: ${stdout}`);
});

}).listen(8080);
