--@block create table workers (1 task)
CREATE TABLE workers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64),
  birthday DATE CHECK(birthday BETWEEN '1900-01-01' AND current_date),
  salary NUMERIC(10,2) CHECK(salary >= 0)
);


--@block delete table workers
DROP TABLE workers;

--@block delete table workers
DROP TABLE employees;

--@block add workers in table
INSERT INTO workers 
(name, birthday, salary)
VALUES
('Marko', '1995-01-25', 500),
('Anna', '1990-03-31', 1500),
('Ivan', '1987-12-25', 2500);


--@block task ALTER TABLE #1
ALTER TABLE workers
ADD COLUMN is_male BOOLEAN,
ADD COLUMN email VARCHAR(128) CHECK(email ~ '[A-Za-z0-9]{3,32}@[a-z]{2,8}\.[a-z]{2,8}'),
ADD COLUMN department VARCHAR(128);

--@block task ALTER TABLE #2
ALTER TABLE workers
ADD CONSTRAINT "email must be unique" UNIQUE(email);

--@block task ALTER TABLE
ALTER TABLE workers
ALTER COLUMN salary
SET NOT NULL;

--@block task ALTER TABLE
ALTER TABLE workers
ALTER COLUMN salary
SET DEFAULT 150;


--@block task ALTER TABLE #3
ALTER TABLE workers DROP COLUMN department;

--@block task ALTER TABLE #4
ALTER TABLE workers
RENAME TO employees;

--@block task INSERT
INSERT INTO employees (name, birthday, salary, is_male, email)
VALUES
('Nikita', '1990-10-20', 300, true, 'sdfg@mail.com'),
('Mariya', '1999-03-11', 100, false, 'mariya@mail.com'),
('Svitlana', '1980-11-10', 1200, false, 'svit@mail.com'),
('Yaroslava', '1980-04-20', 1200, false, 'yaroslavag@mail.com'),
('Petro', '1995-10-20', 1000, true, 'petro@mail.com'),
('Ivanna', '1991-06-01', 140, false, 'ivanna@mail.com'),
('Mykola', '1997-05-22', 400, true, 'muk2@mail.com'),
('Andriy', '1991-05-22', 400, true, 'andriy@mail.com'),
('Vitaliy', '1988-08-06', 1100, true, 'vitaliy@mail.com'),
('Margo', '1981-03-31', 2900, false, 'margo@mail.com'),
('Mykola', '1991-05-22', 400, true, 'muk1@mail.com'),
('Vasul', '1981-09-14', 2100, true, 'vasul@mail.com'),
('Evgen', '1986-03-22', 2300, true, 'evgen@mail.com'),
('Igor', '1975-03-31', 180, true, 'igor@mail.com'),
('Artem', '1998-06-11', 130, true, 'artem@mail.com'),
('Mykola', '1981-10-12', 800, true, 'muk3@mail.com'),
('Victoriya', '1993-05-14', 100, false, 'victoriya@mail.com'),
('Eva', '1995-05-02', 1000, false, 'eva@mail.com'),
('Matviy', '1995-09-02', 1000, true, 'matviy@mail.com'),
('Margaryta', '1981-03-31', 2200, false, 'margo1@mail.com'),
('Adam', '1995-08-20', 1000, true, 'fagshdjfkgl@mail.com'),
('Nestor', '1995-11-10', 1000, true, 'lkko@mail.com'),
('Iryna', '1995-12-01', 1000, false, 'lkhjmjo@mail.com'),
('Adam', '1995-08-20', 1000, true, 'fagkgl@mail.com'),
('Nestor', '1995-11-10', 1000, true, 'lkjhuijko@mail.com'),
('Iryna', '1995-12-01', 1000, false, 'lkho@mail.com');

--@block update table employees
UPDATE employees SET email = 'marko@gmail.com', is_male = true  WHERE id = 1;
UPDATE employees SET email = 'ann@gmail.com', is_male = false  WHERE id = 2;
UPDATE employees SET email = 'ivan@gmail.com', is_male = true  WHERE id = 3;

--@block update table employees
UPDATE employees SET salary = 425, birthday = '1975-10-20'  WHERE id = 4;

--@block update table employees
UPDATE employees SET salary = 600 WHERE (id BETWEEN 2 AND 5) AND is_male = false;

--@block update table employees
UPDATE employees SET name ='Jenya', email = 'jenya@gmal.com' WHERE name ='Vasul';

--@block delete
DELETE FROM employees WHERE id = 2;
--@block delete
DELETE FROM employees WHERE name = 'Mykola';
--@block delete
DELETE FROM employees WHERE salary < 200;

--@block select
SELECT * FROM employees WHERE id = 3;

--@block select
SELECT * FROM employees WHERE salary > 400;

--@block select
SELECT * FROM employees WHERE salary != 500;

--@block select
SELECT * FROM employees WHERE name = 'Petro';

--@block select
SELECT * FROM employees WHERE name != 'Petro';


--@block select
SELECT  extract(year from age(current_date, birthday))::int, salary FROM employees WHERE name='Jenya';


--@block select
SELECT extract(year from age(current_date, birthday))::int, salary, name FROM employees WHERE extract(year from age(current_date, birthday))::int BETWEEN 27 AND 28 OR salary = 1000;

--@block select
SELECT extract(year from age(current_date, birthday))::int, salary, name FROM employees WHERE extract(year from age(current_date, birthday))::int BETWEEN 25 AND 29;

--@block select
SELECT extract(year from age(current_date, birthday))::int, salary, name FROM employees WHERE extract(year from age(current_date, birthday))::int BETWEEN 23 AND 28 OR salary BETWEEN 400 AND 1000;

--@block select
SELECT extract(year from age(current_date, birthday))::int, salary, name FROM employees WHERE extract(year from age(current_date, birthday))::int BETWEEN 27 AND 28 OR salary != 400;

