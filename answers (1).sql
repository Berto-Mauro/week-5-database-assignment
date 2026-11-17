-- =========================================================
-- WEEK 5 DATABASE ASSIGNMENT
-- Topic: Database Indexing and Optimization
-- SQL dialect: MySQL
-- =========================================================

-- Question 1:
-- Drop the index named IdxPhone from the customers table.
DROP INDEX IdxPhone ON customers;


-- Question 2:
-- Create the MySQL user bob and restrict the account to localhost.
CREATE USER 'bob'@'localhost'
IDENTIFIED BY 'S$cu3r3!';


-- Question 3:
-- Grant bob permission to insert records into tables in salesDB.
GRANT INSERT ON salesDB.*
TO 'bob'@'localhost';


-- Question 4:
-- Change the password for bob's localhost account.
ALTER USER 'bob'@'localhost'
IDENTIFIED BY 'P$55!23';


-- End of Week 5 Database Assignment
