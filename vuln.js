var http = require('http');
var fs = require('fs');

http.createServer(function(req, res) {
  // This opens up the writeable stream to `output`

  var parent = parent = "/path/to/parent_directory";
  var writeStream = fs.createWriteStream(path.join(parent,req.params['name']));
}).listen(8080);
