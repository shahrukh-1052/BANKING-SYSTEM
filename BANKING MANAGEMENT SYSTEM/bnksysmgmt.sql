SHOW DATABASES;

-- Create the 'bank' database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS bank;
-- Switch to the 'bank' database
USE bank;

-- Show all tables in the current database
SHOW TABLES;

-- Create a table for temporary account details if it doesn't already exist
CREATE TABLE IF NOT EXISTS temp_account (
    timedate VARCHAR(30),
    remarks VARCHAR(30),
    amount INTEGER
);

-- Uncomment if you need to drop the 'test_transactions' table (for resetting purposes)
-- DROP TABLE test_transactions;

-- Select data from the 'customers' table
SELECT * FROM customers;

-- Select data from the 'test_transactions' table
SELECT * FROM test_transactions;

-- Describe the structure of the 'customers' table
DESCRIBE customers;

-- Add a 'balance' column to the 'customers' table with a default value of 0 (if it doesn't exist already)
-- ALTER TABLE customers ADD COLUMN IF NOT EXISTS balance INT DEFAULT 0;

-- Disable safe updates to allow updates or deletes without a key column
SET SQL_SAFE_UPDATES = 0;

-- Delete a specific user from the 'customers' table based on their username
DELETE FROM customers WHERE username = 'rsedf';

-- Update the password for a specific user
UPDATE customers SET password = 5843 WHERE username = 'zain99';



-- Select all records from the 'customers' table
SELECT * FROM customers;
SELECT * FROM transactions WHERE username = 'sam';
