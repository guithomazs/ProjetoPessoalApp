const mysql = require('mysql2/promise');

const connection = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'root',
    port: 3308,
    database: 'finance',
})

module.exports = connection;