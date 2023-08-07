--@block insert user in table
INSERT INTO users
VALUES('user@mail.com', 'User', 'Userenko','1987-10-23', true, 2100.55);

--@block insert user in table
INSERT INTO users
(email, first_name, last_name, birthday, is_male, current_balance)
VALUES
('ann23@gmail.com', 'Ann', 'Kite', '1995-10-14', false, 25500.25);

--@block inserting multiple enteris
INSERT INTO users
(email, first_name, last_name, birthday, is_male, current_balance)
VALUES
('user1@gmail.com', 'Mark','Dou', '2023-08-02', true, 50000.00),
('user2@gmail.com', 'Stephan','Moor', '1998-01-10', true, 20000.00);

--@block inserting insert
INSERT INTO users
(email , first_name, last_name, birthday, is_male, current_balance)
VALUES
('test@gmail.com', 'Test', 'Testenko', '1993-11-25', true, 2200.25),
('testtest@mail.com', 'Test1', 'Testenko1', '1993-11-25', true, 2200.25),
('test24@gmail.com', 'test7', 'Testenko7', '1993-11-25', true, 125000.25),
('test25@gmail.com', 'Test2', 'Testenko2', '1993-11-25', true, 1000.25),
('test3@gmail.com', 'Test', 'Testenko', '1993-11-25', true, 2200.25);


--@block inserting insert
INSERT INTO users
(email, first_name, last_name, birthday, is_male, current_balance)
VALUES
('test66@gmail.com', 'Test6', 'Testenko6', '1993-11-25', true, 2200.25),
('asdfg@mail.com', 'Test5', 'Testenko5', '1993-11-25', true, 2200.25),
('test2@gmail.com', 'Eva', 'Solen', '1993-11-25', false, 125000.25),
('test33@gmail.com', 'Test3', 'Testenko2', '1993-11-25', true, 1000.25),
('test44@gmail.com', 'Test4', 'Testenko6', '1993-11-25', true, 2200.25);