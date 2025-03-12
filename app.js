const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello from AWS CodeDeploy. If you have reached this far it means pipeline is working fine 100');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});