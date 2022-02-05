app.get('/', (req, res) => {
  const fileName = req.body.fileName;
  // some code...
  fs.stat(`./nonAccessibleDir/${fileName}`, async function(err, stat) {
    // some code...
  });
  // some code...
}


if (pathname.search('____statics') == 1) {
        currpath = __dirname + pathname

        fs.stat(currpath, function (err, stat) {
            if (err || stat.isDirectory()) {
                endupwith404(res)
            } else {
                res.writeHeader(200, {
                    'Content-Type': mime.lookup(currpath)
                })
                fs.createReadStream(currpath).pipe(res)
            }
        })
    }
