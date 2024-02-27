-- Define a table
CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    department TEXT
);

-- Add a column to an existing table
ALTER TABLE employees
ADD COLUMN salary REAL;

-- Rename a table
ALTER TABLE employees
RENAME TO staff;

-- Drop a table
DROP TABLE IF EXISTS customers;
