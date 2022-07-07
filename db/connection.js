const mysql = require('mysql2');
const util = require("util");

// connect to database
const db = mysql.createConnection(
    {
        host: 'localhost',
        // username,
        user: 'root',
        // password
        password: 'EwC7IHbNmjpUxWLGNGb4',
        database: 'employees'
    }
);

db.connect();

db.query = util.promisify(db.query);

module.exports = db;