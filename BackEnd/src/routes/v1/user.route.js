const express = require('express');
const controller = require('../../database-services/users-services');

const router = express.Router();

/**
 * Load user when API with userId route parameter is hit
 */
router.param('userId', controller.getUserById);

router
  .route('/')
  
  .get( controller.getUsers)
  
  .post( controller.createUser);

router
  .route('/:userId')
 
  .get(controller.getUserById)
 
  .patch( controller.updateUser)
 
  .delete(controller.deleteUser);

module.exports = router;
