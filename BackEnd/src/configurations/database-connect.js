const pg = require('pg');
const { config } = require('./system-variables');

const pool = new pg.Pool(config);

module.exports =  function(sql, params){
     return new Promise((resolve, reject) => {
       pool.query(sql, params)
           .then((res) => {
            resolve(res);
         }).catch((err) => {
            reject(err);
         });
    });
}




