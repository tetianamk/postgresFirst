--@block create table ib db
CREATE TABLE users_db(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(64) NOT NULL CONSTRAINT "first name must be valid" CHECK(first_name <> ''),
  last_name VARCHAR(64) NOT NULL CONSTRAINT "last name must be valid" CHECK(last_name <> ''),
  email VARCHAR(128) NOT NULL UNIQUE CONSTRAINT "email must be valid" CHECK(email~'[A-Za-z0-9]{3,32}@[a-z]{2,8}\.[a-z{2,8}]'),
  birthday DATE NOT NULL CHECK(birthday BETWEEN '1900-01-01' AND current_date),
  is_male BOOLEAN DEFAULT true,
  height_m NUMERIC(3, 2) NOT NULL CONSTRAINT min_max_h CHECK(height_m BETWEEN 0.3 AND 3) DEFAULT 1.65,
  weight_kg NUMERIC(3, 0) NOT NULL CONSTRAINT "min - max weight must between 0 - 800" CHECK(weight_kg BETWEEN 0 AND 800),
  CONSTRAINT "first and last name must be unique" UNIQUE (first_name, last_name)
)

--@block delete table ib db
DROP TABLE users_db;

--@block insert user in table
INSERT INTO users_db(
  first_name, last_name, email, birthday, is_male, height_m, weight_kg
) VALUES
('Jon', 'Dou', 'czfgxhb@gmail.com', '1900-01-12',false, DEFAULT, 50),
('Emma', 'Weens', 'olivrtb@gmail.com', '1998-02-02',DEFAULT, 2.9, 120);