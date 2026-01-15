const mysql = require('mysql2');
require('dotenv').config();

// MySQL Bağlantı Havuzu Oluşturuluyor
const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Kodlarda 'async/await' kullanabilmek için promise yapısına çeviriyoruz
const promisePool = pool.promise();

module.exports = {
    query: (sql, params) => promisePool.execute(sql, params),
};