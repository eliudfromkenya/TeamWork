import { join } from 'path';

// import .env variables
require('dotenv-safe').load({
  allowEmptyValues: true,
  path: join(__dirname, '../../.env'),
  sample: join(__dirname, '../../.enviroment-variables'),
});

export const env = process.env.NODE_ENV;
export const port = process.env.PORT;
export const jwtSecret = process.env.JWT_SECRET;
export const jwtExpirationInterval = process.env.JWT_EXPIRATION_MINUTES;
export const logs = process.env.NODE_ENV === 'production' ? 'combined' : 'dev';