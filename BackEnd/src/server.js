const routes = require('../src/routes/v1');
const express = require('express')
const app = express()
const { port, env } = require('./configurations/system-variables');
const ff = require('./configurations/database-connect');
const users = require('./database-services/users-services');
const bodyParser = require('body-parser');



// install the api v1 routes
app.use('/v1', routes);
app.get('/', (request, response) => {
    response.json({ info: 'Node.js, Express, and Postgres API' })
  })
app.use(bodyParser.json())
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
)

var ss = ff('SELECT * FROM "public"."Users" WHERE "public"."Users"."UserID" = $1',[2])
.then(async res => 
    {
        console.log(res.rows);
    }).catch(e => {
        console.log(e.stack);
});

var res = {
      
}

res.status = function(obj){
    console.log('r', obj);
 }

 res.send = function(obj){
    console.log('r', obj);
 }


console.log(ss);
console.log(users.getUsers({},res));

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))