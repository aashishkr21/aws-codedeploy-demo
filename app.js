const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello from AWS CodeDeploy. Hope the pipeline is working too!');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});