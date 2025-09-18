-- SQL roles creation
CREATE ROLE admin;
CREATE ROLE editor;
CREATE ROLE viewer;

-- Create users
CREATE USER 'alice'@'localhost' IDENTIFIED BY 'alice123';
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'bob123';
CREATE USER 'charlie'@'localhost' IDENTIFIED BY 'charlie123';

-- Assign Privileges to Roles

-- Admin: Full access
GRANT ALL PRIVILEGES ON mydb.* TO 'admin';


-- Editor: Can SELECT and UPDATE, but not DELETE
GRANT SELECT, INSERT, UPDATE ON mydb.* TO 'editor';

-- Viewer: Read-only access
GRANT SELECT ON mydb.* TO viewer;

-- Assigning Roles to Users
GRANT 'admin' TO 'alice'@'localhost';
GRANT 'editor' TO 'bob'@'localhost';
GRANT 'viewer' TO 'charlie'@'localhost';

-- Restrict Access (Example)
-- Remove DELETE from editor
REVOKE DELETE ON mydb.* FROM editor;


