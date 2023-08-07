
--@block create table ib db
CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  email VARCHAR(128) NOT NULL CONSTRAINT "email maust be valid"CHECK(email~'[A-Za-z0-9]{3,32}@[a-z]{2,8}\.[a-z]{2,8}'),
  first_name VARCHAR(64) NOT NULL,
  last_name VARCHAR(64) NOT NULL,
  birthday DATE CHECK(birthday BETWEEN '1900-01-01' AND current_date),
  is_male BOOLEAN,
  current_balance NUMERIC(10,2) NOT NULL CHECK (current_balance >= 0),
  CONSTRAINT "email maust be unique" UNIQUE( email)
);
--Comment
--@block delete table ib db
DROP TABLE users;
--@block add colum(s)
ALTER TABLE users ADD COLUMN height_m NUMERIC(3,2) CHECK(height_m BETWEEN 0.3 AND 3), ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
ADD COLUMN updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp;