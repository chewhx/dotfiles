const fs = require("fs");
const fileName = `${process.cwd()}/nodemon.json`;
const nodemonExists = fs.existsSync(fileName);

const data = `{
  "restartable": "rs",
  "ignore": [".git", "node_modules/**/node_modules"],
  "verbose": false
}`;

if (!nodemonExists) {
  fs.writeFileSync(fileName, data);
  console.log(`Nodemon config file created.`);
}

if (nodemonExists) {
  console.log(`Nodemon config already exists - ${fileName}`);
}
