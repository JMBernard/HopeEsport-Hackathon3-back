const connection = require("../db-config");
const router = require("express").Router();

router.get('/', (req, res) => {
    connection.query('SELECT * FROM admin', (err, result) => {
      if (err) {
        res.status(500).send('Error retrieving admin from database');
      } else {
        res.json(result);
      }
    });
  });

router.get('/:id', (req, res) => {
  const adminId = req.params.id;
  connection.query(
    'SELECT * FROM admin WHERE id = ?',
    [adminId],
    (err, results) => {
      if (err) {
        res.status(500).send('Error retrieving admin from database');
      } else {
        if (results.length) res.json(results[0]);
        else res.status(404).send('Admin not found');
      }
    }
  );
});

router.post('/', (req, res) => {
  const { name, password } = req.body;
  connection.query(
    'INSERT INTO admin (name, password) VALUES (?, ?)',
    [name, password],
    (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).send('Error saving the admin');
      } else {
        const id = result.insertId;
        const createdAdmin = { id, name, password };
        res.status(201).json(createdAdmin);
      }
    }
  );
});

router.put('/:id', (req, res) => {
  const adminId = req.params.id;
  const db = connection.promise();
  let existingAdmin = null;
  db.query('SELECT * FROM admin WHERE id = ?', [adminId])
    .then(([results]) => {
        existingAdmin = results[0];
      if (!existingAdmin) return Promise.reject('RECORD_NOT_FOUND');
      return db.query('UPDATE admin SET ? WHERE id = ?', [req.body, adminId]);
    })
    .then(() => {
      res.status(200).json({ ...existingAdmin, ...req.body });
    })
    .catch((err) => {
      console.error(err);
      if (err === 'RECORD_NOT_FOUND')
        res.status(404).send(`Admin with id ${adminId} not found.`);
      else res.status(500).send('Error updating a admin');
    });
});

router.delete('/:id', (req, res) => {
  connection.query(
    'DELETE FROM admin WHERE id = ?',
    [req.params.id],
    (err, result) => {
      if (err) {
        console.log(err);
        res.status(500).send('Error deleting an admin');
      } else {
        if (result.affectedRows) res.status(200).send('🎉 Admin deleted!');
        else res.status(404).send('Admin not found.');
      }
    }
  );
});

module.exports = router;