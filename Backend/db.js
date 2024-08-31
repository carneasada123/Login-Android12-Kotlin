// db.js
const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres', // Reemplaza con tu usuario de PostgreSQL
  host: 'localhost',
  database: 'practicaDB2',
  password: '123456', // Reemplaza con tu contraseña de PostgreSQL
  port: 5432,
});

pool.on('error', (err, client) => {
  console.error('Unexpected error on idle client', err); // Añadir log de error
  process.exit(-1);
});

module.exports = pool;
