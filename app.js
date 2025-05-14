const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('This side Loda Lassan Ani');
});

app.listen(port, '0.0.0.0', () => {
  console.log(`App running on port ${port}`);
});
