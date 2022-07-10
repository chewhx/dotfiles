const fs = require("fs");
const fileName = `${process.cwd()}/.prettierrc`;
const prettierExists = fs.existsSync(fileName);

const data = `{
  "trailingComma": "es5",
  "tabWidth": 2,
  "useTabs": true,
  "singleQuote": true,
  "semi": true,
  "printWidth": 80,
  "bracketSpacing": true,
  "bracketSameLine": false
}`;

if (!prettierExists) {
  fs.writeFileSync(fileName, data);
  console.log(`Prettier config file created.`);
}

if (prettierExists) {
  console.log(`Prettier config already exists - ${fileName}`);
}
