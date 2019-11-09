const pg = require('pg');
const { dbConfig } = require('./system-variables');

const pool = new pg.Pool(dbConfig);

module.exports =  function(sqlQuery,params){
    pool.connect()
    .then(async client => {
        try {
            const res = await client.query(sqlQuery, params);
            client.release();
            console.log(res.rows[0]);
        }
        catch (e) {
            client.release();
            console.log(e.stack);
        }
  }).catch(e => {
    console.log(e.stack);
  }).finally(() => pool.end());
}



