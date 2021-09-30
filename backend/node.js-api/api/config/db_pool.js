const mysql = require('mysql2/promise');

const dbConfig = {
    host: 'j5a205.p.ssafy.io',
    port: '3306',
    user: 'j5a205',
    password: '1234',
    database: 'Project2',

    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
};

const pool = mysql.createPool(dbConfig);
module.exports = {pool};

// DB 연동