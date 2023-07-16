CREATE DATABASE IF NOT EXISTS human_friends;

USE human_friends;
CREATE TABLE Animals
    (id INT PRIMARY KEY AUTO_INCREMENT,
     name VARCHAR(30));
INSERT INTO Animals (name) VALUES
    ('home_animals'),
    ('pack_animals');

CREATE TABLE home_animals
	(id INT PRIMARY KEY AUTO_INCREMENT,
    	home_animals_name VARCHAR (20),
    	Animals_class_id INT,
    	FOREIGN KEY (Animals_class_id) REFERENCES Animals (Id) ON DELETE CASCADE ON UPDATE CASCADE);
INSERT INTO home_animals (home_animals_name, Animals_class_id) VALUES
    ('Dog', 1),
    ('Cat', 1),
    ('Hamster', 1);

CREATE TABLE pack_animals
    (id INT PRIMARY KEY AUTO_INCREMENT,
    pack_animals_name VARCHAR(30),
    Animals_class_id INT,
    FOREIGN KEY (Animals_class_id) REFERENCES Animals (Id) ON DELETE CASCADE ON UPDATE CASCADE);
INSERT INTO pack_animals (pack_animals_name, Animals_class_id) VALUES
    ('Horse', 2),
    ('Camel', 2),
    ('Donkey', 2);

CREATE TABLE dogs 
  (id INT PRIMARY KEY AUTO_INCREMENT, 
  dog_name VARCHAR(20), 
  date_of_birth DATE,
  commands VARCHAR(50), 
  home_animals_id INT, 
  FOREIGN KEY (home_animals_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO dogs (dog_name, date_of_birth, commands, home_animals_id) 
  VALUES 
  ('Рекс', '2020-01-01', 'сидеть, лежать, голос', 1), 
  ('Тузик', '2023-12-012', 'сидеть, лежать, голос, ко мне', 1), 
  ('Атос', '2023-10-13', 'сидеть, лежать, фас', 1), 
  ('Грелка', '2020-07-11', 'сидеть, лежать, фу, фас', 1);

CREATE TABLE cats 
  (id INT PRIMARY KEY AUTO_INCREMENT, 
  cat_name VARCHAR(20), 
  date_of_birth DATE,  
  commands VARCHAR(20), 
  home_animals_id INT, 
  FOREIGN KEY (home_animals_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO cats (cat_name, date_of_birth, commands, home_animals_id) 
  VALUES 
  ('Маня', '2020-05-23', 'не применимо', 2), 
  ('Мурка', '2021-12-01', 'не применимо', 2), 
  ('Барсик', '2023-09-13', 'не применимо', 2), 
  ('Серый', '2020-06-18', 'не применимо', 2);

CREATE TABLE hamsters 
  (id INT PRIMARY KEY AUTO_INCREMENT, 
  hamster_name VARCHAR(20), 
  date_of_birth DATE,  
  commands VARCHAR(20), 
  home_animals_id INT, FOREIGN KEY (home_animals_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO hamsters (hamster_name, date_of_birth, commands, home_animals_id) 
	VALUES 
	('Маня', '2023-05-02', 'не применимо', 3), 
        ('Машка', '2023-01-01', 'не применимо', 3), 
        ('Гоша', '2023-02-13', 'не применимо', 3), 
        ('Буба', '2023-06-18', 'не применимо', 3);

CREATE TABLE horses 
    (id INT PRIMARY KEY AUTO_INCREMENT, 
    horse_name VARCHAR(20), 
    date_of_birth DATE,  
    commands VARCHAR(20), 
    pack_animals_id INT, FOREIGN KEY (pack_animals_id) REFERENCES pack_animals (id) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO horses (horse_name, date_of_birth, commands, pack_animals_id) 
	VALUES 
	('Салли', '2018-01-30', 'но, тпру, стоять', 1), 
        ('Нелли', '2017-08-11', NULL, 1), 
        ('Спирит', '2020-02-19', 'тпру, но', 1), 
        ('Сполох', '2021-12-18', 'тпру, но, стоять', 1);

CREATE TABLE camels 
    (id INT PRIMARY KEY AUTO_INCREMENT, 
    camel_name VARCHAR(20), 
    date_of_birth DATE,  
    commands VARCHAR(30), 
    pack_animals_id INT, FOREIGN KEY (pack_animals_id) REFERENCES pack_animals (id) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO camels (camel_name, date_of_birth, commands, pack_animals_id) 
	VALUES 
	('Дмельмаян', '2018-02-10', 'гит, дурр, каш', 2), 
        ('Бура', '2016-11-11', 'гит, дурр, каш', 2), 
        ('Тюйе', '2021-02-23', 'гит, дурр', 2), 
        ('Джафар', '2022-12-18', 'гит, дурр, каш, хап-хап', 2);

CREATE TABLE donkeys 
    (id INT PRIMARY KEY AUTO_INCREMENT, 
    donkey_name VARCHAR(20), 
    date_of_birth DATE,  
    commands VARCHAR(20), 
    pack_animals_id INT, FOREIGN KEY (pack_animals_id) REFERENCES pack_animals (id) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO donkeys (donkey_name, date_of_birth, commands, pack_animals_id) 
	VALUES 
	('Тайсон', '2017-03-30', 'не применимо', 3), 
        ('Арчи', '2019-08-19', 'не применимо', 3), 
        ('Мэтью', '2022-10-15', 'не применимо', 3), 
        ('Франклин', '2021-04-18', 'не применимо', 3);

SELECT * FROM Animals;
SELECT * FROM home_animals;
SELECT * FROM pack_animals;
SELECT * FROM dogs;
SELECT * FROM cats;
SELECT * FROM hamsters;
SELECT * FROM horses;
SELECT * FROM camels;
SELECT * FROM donkeys;

DROP TABLE camels;
ALTER TABLE pack_animals DROP COLUMN camel;

SELECT 
  dogs.dog_name AS name, 
  dogs.date_of_birth, 
  dogs.commands, 
  ha.home_animals_name, 
  ha.Animals_class_id 
FROM dogs JOIN home_animals ha ON dogs.home_animals_id=ha.id 
UNION 
 SELECT 
   cats.cat_name AS name, 
   cats.date_of_birth, 
   cats.commands, 
   ha.home_animals_name, 
   ha.Animals_class_id 
 FROM cats JOIN home_animals ha ON cats.home_animals_id=ha.id 
 UNION 
   SELECT 
     horses.horse_name AS name, 
     horses.date_of_birth, 
     horses.commands, 
     pa.pack_animals_name, 
     pa.Animals_class_id 
  FROM horses JOIN pack_animals pa ON horses.id=pa.id 
  UNION 
    SELECT 
      hamsters.hamster_name AS name, 
      hamsters.date_of_birth, 
      hamsters.commands, 
      ha.home_animals_name, 
      ha.Animals_class_id 
   FROM hamsters JOIN home_animals ha ON hamsters.id=ha.id 
   UNION 
     SELECT 
       donkeys.donkey_name AS name, 
       donkeys.date_of_birth, 
       donkeys.commands, 
       pa.pack_animals_name, 
       pa.Animals_class_id FROM donkeys JOIN pack_animals pa ON donkeys.id=pa.id;

CREATE TABLE yang_animals1 
	(id INT PRIMARY KEY AUTO_INCREMENT, 
	yang_animal_name VARCHAR(20), 
	date_of_birth DATE, 
	age VARCHAR(30), 
	commands VARCHAR(50), 
	`type` VARCHAR(20));

INSERT INTO yang_animals1 (yang_animal_name, date_of_birth, age, commands, `type`) 
	SELECT dog_name AS yang_animal_name, date_of_birth, CONCAT(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()), ' years ', TIMESTAMPDIFF(MONTH, date_of_birth, CURDATE()), ' months '), commands,  ha.home_animals_name FROM dogs d, home_animals ha WHERE d.home_animals_id=ha.id AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) != 0 AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 3 
	UNION 
	SELECT cat_name AS yang_animal_name, date_of_birth, CONCAT(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()), ' years ', TIMESTAMPDIFF(MONTH, date_of_birth, CURDATE()), ' months '), commands, ha.home_animals_name FROM cats c, home_animals ha WHERE c.home_animals_id=ha.id AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) != 0 AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 3 
	UNION 
	SELECT hamster_name AS yang_animal_name, date_of_birth, CONCAT(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()), ' years ', TIMESTAMPDIFF(MONTH, date_of_birth, CURDATE()), ' months '), commands, ha.home_animals_name FROM hamsters h, home_animals ha WHERE h.home_animals_id=ha.id AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) != 0 AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 3 
	UNION 
	SELECT horse_name AS yang_animal_name, date_of_birth, CONCAT(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()), ' years ', TIMESTAMPDIFF(MONTH, date_of_birth, CURDATE()), ' months '), commands, pa.pack_animals_name FROM horses ho, pack_animals pa WHERE ho.pack_animals_id=pa.id AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) != 0 AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 3 
	UNION 
	SELECT donkey_name AS yang_animal_name, date_of_birth, CONCAT(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()), ' years ', TIMESTAMPDIFF(MONTH, date_of_birth, CURDATE()), ' months '), commands, pa.pack_animals_name FROM donkeys don, pack_animals pa WHERE don.pack_animals_id=pa.id AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) != 0 AND TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 3;


SELECT * FROM yang_animals1;


