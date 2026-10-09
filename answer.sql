-- Week 5 Database Assignment
-- Database Indexing and Optimization


-- =========================================================
-- Question 1
-- Drop the IdxPhone index from the customers table
-- =========================================================

DROP INDEX IdxPhone ON customers;


-- =========================================================
-- Question 2
-- Create a user named bob restricted to localhost
-- =========================================================

CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';


-- =========================================================
-- Question 3
-- Grant INSERT privilege to bob on the salesDB database
-- =========================================================

GRANT INSERT ON salesDB.* TO 'bob'@'localhost';


-- =========================================================
-- Question 4
-- Change bob's password
-- =========================================================

ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
