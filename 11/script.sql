-- script.sql

USE mydatabase;

SELECT id, name, email
FROM users
WHERE registration_date >= '2024-01-01';
