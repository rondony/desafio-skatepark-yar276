import pg from 'pg'
const { Pool } = pg
 
const pool = new Pool({
  user: 'postgres',
  password: '123456',
  host: 'localhost',
  port: 5430,
  database: 'skatepark',
});


export default pool;