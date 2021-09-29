const mysql = require('mysql');
const dbConfig = {
    host: 'j5a205.p.ssafy.io',
    port: '3306',
    user: 'j5a205',
    password: '1234',
    database: 'Project2',

    connectionLimit: 10,
    waitForConnection: true
};

const conn = mysql.createConnection(dbConfig);
module.exports = conn;

// DB 연동