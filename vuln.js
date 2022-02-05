var http = require('http');
var fs = require('fs');

http.createServer(function(req, res) {
  // Http server that listens to port 8080 and creates a file in the parent directory based on the name parameter
  var parent = parent = "/path/to/parent_directory";
  var writeStream = fs.createWriteStream(path.join(parent,req.params['name']));
}).listen(8080);




http.createServer(function(req, res) {
  // Http server that listens to port 8080 and creates a file in the parent directory based on the name parameter
  var parent = parent = "/path/to/parent_directory";
  var filename = path.join(parent,req.params['name']);
  if (filename.indexOf(parent) == 0)
  {
    var writeStream = fs.createWriteStream(filename);
  }
}).listen(8080);
