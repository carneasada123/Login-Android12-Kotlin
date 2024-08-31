const express = require('express');
const pool = require('../db');
const router = express.Router();

router.post('/login', async (req, res) => {
  const { correo, clave } = req.body;

  console.log(`Attempting login with correo: ${correo}, clave: ${clave}`);

  try {
    const result = await pool.query(
      'SELECT pk_persona, correo, clave, nombre FROM persona WHERE correo = $1 AND clave = $2',
      [correo, clave]
    );

    if (result.rows.length > 0) {
      // Asegurarse de que el campo pk_persona no es null antes de responder
      const user = result.rows[0];
      console.log('Resultado de la consulta:', user);

      if (user.pk_persona === null) {
        console.error('El campo pk_persona es null, revisa la consulta o el mapeo');
      }

      res.status(200).json({ 
        message: 'Login successful', 
        user: user 
      });
    } else {
      res.status(401).json({ message: 'Invalid email or password' });
    }
  } catch (err) {
    console.error('Database query error:', err);
    res.status(500).json({ message: 'Internal server error', error: err.message });
  }
});

module.exports = router;
