SHOW DATABASES;

CREATE TABLE admins (
adminID      INT(11)      NOT NULL   AUTO_INCREMENT,
emailAddress VARCHAR(255) NOT NULL   UNIQUE,
password     CHAR(64)     NOT NULL,
firstName    VARCHAR(60)  NOT NULL,
lastName     VARCHAR(60)  NOT NULL,
PRIMARY KEY (adminID)
);

SHOW TABLES;

SHOW CREATE TABLE admins;

DESCRIBE admins;

/* adding data to table, use sha2 to encrypt password */
INSERT INTO admins
(emailAddress, password, firstName, lastName)
VALUES
('taylor@guitarshop.com', SHA2('myL0ngP@ssword', 256), 'Taylor', 'Swift');

SELECT * FROM admins;

INSERT INTO admins (emailAddress, password, firstName, lastName)
VALUES ('justin@guitarshop.com', SHA2('myL0ngP@ssword', 256), 'Justin', 'Bieber');

INSERT INTO admins (emailAddress, password, firstName, lastName)
VALUES ('delali@guitarshop.com', SHA2('bestPwrdever', 256), 'Delali', 'Kumapley');

INSERT INTO admins(emailAddress,password, firstName, lastName)
VALUES('teik@guitatshop.com', SHA2('njit4lyfe',256), 'Teik', 'Lim');

SELECT * FROM admins;
SELECT emailAddress, firstName FROM admins ORDER BY firstName;
SELECT * FROM admins WHERE lastName = 'Swift';

SELECT adminID, firstName, lastName FROM admins ORDER BY firstName;

-- UPDATE table SET datafield = value [WHERE condition];
UPDATE admins SET emailAddress = 'taylor.swift@guitarshop.com' WHERE adminID = 1;

SELECT * FROM admins;
UPDATE admins SET emailAddress = 'justin.bieber@guitarshop.com', password = SHA2('mySh0rtP@ssword', 256) WHERE adminID = 2;
SELECT * FROM admins;

UPDATE admins SET lastName = "Kelce" WHERE firstName = 'Taylor';
SELECT * FROM admins WHERE firstName = 'Taylor';

-- DELETE FROM table [WHERE condition];  (NOTE: Delete is permanent! There is no undo!)
DELETE FROM admins WHERE adminID = 1;
SELECT * FROM admins;

DELETE FROM admins WHERE lastName = 'Lim';
INSERT INTO admins(emailAddress, password, firstName, lastName)
VALUES('beyonce@guitarshop.com', SHA2('blueivy2025', 256),'Beyonce', 'Knowles-Carter')

SELECT * FROM admins;