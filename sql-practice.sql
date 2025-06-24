CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    age INT
);


INSERT INTO users (username, firstName, lastName, age)
values
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 
 SELECT * FROM users;
 
 update users set firstName = 'Jane', lastName = 'Doe' where username = 'jdoe';

delete from users where username = 'jdoe';


select firstName, lastName from users where lastName = 'Doe';

select * from users where lastName = 'Doe' and (firstName = 'John' or firstName = 'Jane');

select * from users;

-- Insert new user data
INSERT INTO users (username, firstName, lastName, age)
VALUES ('sjohn', 'john', 'saint',42);

-- Update existing record
UPDATE users
SET age = 45
WHERE username = 'sjohn';

-- DELETE specfic row
DELETE FROM users
WHERE username = 'tkim'; 

-- SELECT with conditions
SELECT * FROM users
Where age > 30;

-- Sorting
SELECT * FROM users
ORDER BY lastName ASC;

-- LIMIT
SELECT * FROM users
ORDER BY age DESC
LIMIT 6;



