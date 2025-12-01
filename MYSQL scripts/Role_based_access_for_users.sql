-- 1. Create a simple database
CREATE DATABASE company_db;
USE company_db;

-- 2. Create a sample table
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
Show tables
Select * from employees;
-- 3. Create roles (MySQL 8+ supports roles)
CREATE ROLE admin_role;
CREATE ROLE developer_role;
CREATE ROLE analyst_role;
CREATE ROLE readonly_role;

-- 4. Grant privileges to roles
-- Admin: Full access
GRANT ALL PRIVILEGES ON company_db.* TO admin_role;

-- Developer: Can insert, update, delete
GRANT INSERT, UPDATE, DELETE, SELECT ON company_db.* TO developer_role;

-- Analyst: Can only read and run SELECT queries
GRANT SELECT ON company_db.* TO analyst_role;

-- ReadOnly: Strictly read-only
GRANT SELECT ON company_db.employees TO readonly_role;

-- 5. Create 10 users and assign roles
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';
CREATE USER 'user3'@'localhost' IDENTIFIED BY 'password3';
CREATE USER 'user4'@'localhost' IDENTIFIED BY 'password4';
CREATE USER 'user5'@'localhost' IDENTIFIED BY 'password5';
CREATE USER 'user6'@'localhost' IDENTIFIED BY 'password6';
CREATE USER 'user7'@'localhost' IDENTIFIED BY 'password7';
CREATE USER 'user8'@'localhost' IDENTIFIED BY 'password8';
CREATE USER 'user9'@'localhost' IDENTIFIED BY 'password9';
CREATE USER 'user10'@'localhost' IDENTIFIED BY 'password10';


-- 6. Assign roles to users
GRANT admin_role TO 'user1'@'localhost';
GRANT developer_role TO 'user2'@'localhost';
GRANT developer_role TO 'user3'@'localhost';
GRANT analyst_role TO 'user4'@'localhost';
GRANT analyst_role TO 'user5'@'localhost';
GRANT readonly_role TO 'user6'@'localhost';
GRANT readonly_role TO 'user7'@'localhost';
GRANT readonly_role TO 'user8'@'localhost';
GRANT readonly_role TO 'user9'@'localhost';
GRANT readonly_role TO 'user10'@'localhost';

-- 7. Activate roles by default (optional)
SET DEFAULT ROLE ALL TO 'user1'@'localhost';
SET DEFAULT ROLE ALL TO 'user2'@'localhost';
SET DEFAULT ROLE ALL TO 'user3'@'localhost';
SET DEFAULT ROLE ALL TO 'user4'@'localhost';
SET DEFAULT ROLE ALL TO 'user5'@'localhost';
SET DEFAULT ROLE ALL TO 'user6'@'localhost';
SET DEFAULT ROLE ALL TO 'user7'@'localhost';
SET DEFAULT ROLE ALL TO 'user8'@'localhost';
SET DEFAULT ROLE ALL TO 'user9'@'localhost';
SET DEFAULT ROLE ALL TO 'user10'@'localhost'; 

FLUSH PRIVILEGES;