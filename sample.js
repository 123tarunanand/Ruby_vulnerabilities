
const fs = require("fs");

app.get('/', (req, res) => {
  const fileName = req.body.fileName;
  // some code...
  fs.stat(`./nonAccessibleDir/${fileName}`, async function(err, stat) {
    // some code...
  });
  // some code...
}
