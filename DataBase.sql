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
