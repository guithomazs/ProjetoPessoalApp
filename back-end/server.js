const express = require('express');
const actors = require('./routes/actors')

const app = express();

app.use(express.json());

const PORT = 3000;

app.use('/actors', actors);

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
