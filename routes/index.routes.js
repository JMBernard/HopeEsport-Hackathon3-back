const router = require('express').Router();
const usersRouter = require('./users.routes');
const adminRouter = require('./admin.routes');
const playersRouter = require('./players.routes');
// const membersRouter = require('./members.routes');

router.use('/users', usersRouter);
router.use('/admin', adminRouter);
router.use('/players', playersRouter);
// router.use('/members', membersRouter);

module.exports = router;