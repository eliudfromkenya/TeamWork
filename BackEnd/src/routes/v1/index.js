const express = require('express');
const statusMonitor = require('express-status-monitor')();
const passport = require('passport');
const userRoutes = require('./user.route');

const router = express.Router();
const jwtAuth = passport.authenticate('jwt', { session: false });

/**
 * GET v1/status
 */
router.use(statusMonitor);

/**
 * GET v1/docs
 */
//router.use('/docs', express.static('docs'));
//router.use('/docs-examples', express.static('docs-examples'));

router.use('/users',  userRoutes);

module.exports = router;
