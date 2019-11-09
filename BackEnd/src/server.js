//const routes = require('../routes/v1');

const express = require('express')
const app = express()
const { port, env } = require('./configurations/system-variables');
const ff = require('./configurations/database-connect')

// install the api v1 routes
//app.use('/v1', routes);

var s = ff('SELECT * FROM cars WHERE id = $1', [1]);

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))