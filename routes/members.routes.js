const connection = require("../db-config");
const router = require("express").Router();

router.get('/', (req, res) => {
    connection.query('SELECT * FROM members', (err, result) => {
      if (err) {
        res.status(500).send('Error retrieving members from database');
      } else {
        res.json(result);
      }
    });
  });

router.get('/:id', (req, res) => {
  const memberId = req.params.id;
  connection.query(
    'SELECT * FROM members WHERE id = ?',
    [memberId],
    (err, results) => {
      if (err) {
        res.status(500).send('Error retrieving member from database');
      } else {
        if (results.length) res.json(results[0]);
        else res.status(404).send('Member not found');
      }
    }
  );
});

router.post('/', (req, res) => {
  const { pseudonym, firstname, logotype, age, position, discord, instagram, twitter, twitch } = req.body;
  connection.query(
    'INSERT INTO members (pseudonym, firstname, logotype, age, position, discord, instagram, twitter, twitch) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)',
    [pseudonym, firstname, logotype, age, position, discord, instagram, twitter, twitch],
    (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).send('Error saving the members');
      } else {
        const id = result.insertId;
        const createdMembers = { id, pseudonym, firstname, logotype, age, position, discord, instagram, twitter, twitch };
        res.status(201).json(createdMembers);
      }
    }
  );
});

router.put('/:id', (req, res) => {
  const membersId = req.params.id;
  const db = connection.promise();
  let existingMembers = null;
  db.query('SELECT * FROM members WHERE id = ?', [membersId])
    .then(([results]) => {
        existingMembers = results[0];
      if (!existingMembers) return Promise.reject('RECORD_NOT_FOUND');
      return db.query('UPDATE members SET ? WHERE id = ?', [req.body, membersId]);
    })
    .then(() => {
      res.status(200).json({ ...existingMembers, ...req.body });
    })
    .catch((err) => {
      console.error(err);
      if (err === 'RECORD_NOT_FOUND')
        res.status(404).send(`User with id ${membersId} not found.`);
      else res.status(500).send('Error updating a member');
    });
});

router.delete('/:id', (req, res) => {
  connection.query(
    'DELETE FROM members WHERE id = ?',
    [req.params.id],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send('Error deleting an member');
      } else {
        if (result.affectedRows) res.status(200).send('🎉 Member deleted!');
        else res.status(404).send('Member not found.');
      }
    }
  );
});

module.exports = router;