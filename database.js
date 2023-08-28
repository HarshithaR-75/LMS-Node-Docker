const mysql = require('mysql');
const express = require('express');  

const app = express();


// Create a connection to the MySQL database
const connection = mysql.createConnection({
  host: '127.0.0.1',      // MySQL database host (e.g., 'localhost')
  user: 'root',  // MySQL database user
  password: 'harshmysql',  // MySQL database password
  database: 'lms'   // MySQL database name
});

//Connect to the database
connection.connect((error) => {
  if (error) {
    console.error('Error connecting to the database: ', error);
    return;
  }
  console.log('Connected to the database!');
  
  // Perform a query
  connection.query('SELECT * FROM book_details', (error, results) => {
    if (error) {
      console.error('Error executing query: ', error);
      return;
    }
    
    // Process the results
    console.log('Query results: ', results);
    
    // Close the connection
    connection.end((error) => {
      if (error) {
        console.error('Error closing connection: ', error);
        return;
      }
      console.log('Connection closed.');
    });
  });
});


// var mysql = require('mysql');

// var con = mysql.createConnection({
//   host: "localhost",
//   user: "yourusername",
//   password: "yourpassword"
// });

// con.connect(function(err) {
//   if (err) throw err;
//   console.log("Connected!");
// });