//const routes = require('../routes/v1');

const express = require('express')
const app = express()
//const port = 3000
const { port, env } = require('./configurations/system-variables');


// install the api v1 routes
//app.use('/v1', routes);

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))