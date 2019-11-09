const path = require('path');


const envPath =path.join(__dirname, '../../.env');
const envExamplePath=path.join(__dirname, '../../.env.example');
// import .env variables
require('dotenv-safe').config({
  allowEmptyValues: true,
  path: envPath,
  sample: envExamplePath,
});

module.exports = {
  env: process.env.NODE_ENV,
  port: process.env.PORT,
  jwtSecret: process.env.JWT_SECRET,
  jwtExpirationInterval: process.env.JWT_EXPIRATION_MINUTES,
  logs: process.env.NODE_ENV === 'production' ? 'combined' : 'dev',
};
