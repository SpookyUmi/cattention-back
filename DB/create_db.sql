DROP TABLE IF EXISTS "cat";
DROP TABLE IF EXISTS "breed";
DROP TABLE IF EXISTS "location";
DROP TABLE IF EXISTS "gender";
DROP TABLE IF EXISTS "age";

-- cat

CREATE TABLE IF NOT EXISTS "cat" (
  "id" INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  "name" TEXT,
  "description" TEXT,
  "picture_url" TEXT,
  FOREIGN KEY("breed_id") REFERENCES "breed"("id"),
  FOREIGN KEY("location_id") REFERENCES "location"("id"),
  FOREIGN KEY("gender_id") REFERENCES "gender"("id"),
  FOREIGN KEY("age_id") REFERENCES "age"("id"),
);

INSERT INTO "cat"("name", "description") VALUES
('Azuki', 'meow for food, then when human fills food dish, take a few bites of food and continue meowing claw',35,24.99,'Gentil'),
(2,'Barret', 'Barret Wallaceest le chef d''AVALANCHE, groupe écologiste de résistance à l''épuisement des ressources planétaires (l''énergie Mako) par la Shinra.',30,24.99,'Gentil'),
(3,'Cloud', 'Cloud Strife est le principal héros de Final Fantasy VII. Convaincu d''être un ancien SOLDAT, il est au début du jeu un mercenaire employé par AVALANCHE.',37,34.99,'Gentil'),
(4,'Nanaki', 'Rouge XIII, de son vrai nom Nanaki, est l''un des derniers survivants de sa tribu, composée de personnages proches des félidés (lion, tigre, jaguar, ...) par leur aspect physique, vivant à Cosmo Canyon.',25,24.99,'Animal'),
(5,'Sephiroth', 'Sephiroth est présenté au cours du jeu comme le fils de Hojo, un savant fou, et de Lucrécia, son assistante.',35,34.99,'Méchant'),
(6,'Tifa', 'Tifa Lockheart est une jeune femme originaire de Nibelheim, amie d''enfance de Cloud et membre du groupe AVALANCHE',35,24.99,'Gentil');

-- breed

CREATE TABLE IF NOT EXISTS "breed" (
  "id" INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  "name" TEXT,
);

INSERT INTO "figurine"("id","name", "description", "size", "price", "category") VALUES
(1,'Aerith', 'Aerith Gainsborough est la dernière descendante des Cetras (ou Anciens), fille du professeur Gast et d''Ifalna',35,24.99,'Gentil'),
(2,'Barret', 'Barret Wallaceest le chef d''AVALANCHE, groupe écologiste de résistance à l''épuisement des ressources planétaires (l''énergie Mako) par la Shinra.',30,24.99,'Gentil'),
(3,'Cloud', 'Cloud Strife est le principal héros de Final Fantasy VII. Convaincu d''être un ancien SOLDAT, il est au début du jeu un mercenaire employé par AVALANCHE.',37,34.99,'Gentil'),
(4,'Nanaki', 'Rouge XIII, de son vrai nom Nanaki, est l''un des derniers survivants de sa tribu, composée de personnages proches des félidés (lion, tigre, jaguar, ...) par leur aspect physique, vivant à Cosmo Canyon.',25,24.99,'Animal'),
(5,'Sephiroth', 'Sephiroth est présenté au cours du jeu comme le fils de Hojo, un savant fou, et de Lucrécia, son assistante.',35,34.99,'Méchant'),
(6,'Tifa', 'Tifa Lockheart est une jeune femme originaire de Nibelheim, amie d''enfance de Cloud et membre du groupe AVALANCHE',35,24.99,'Gentil');

-- location

CREATE TABLE IF NOT EXISTS "location" (
  "id" INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  "city" TEXT,
  "department" NUMBER
);

INSERT INTO "figurine"("id","name", "description", "size", "price", "category") VALUES
(1,'Aerith', 'Aerith Gainsborough est la dernière descendante des Cetras (ou Anciens), fille du professeur Gast et d''Ifalna',35,24.99,'Gentil'),
(2,'Barret', 'Barret Wallaceest le chef d''AVALANCHE, groupe écologiste de résistance à l''épuisement des ressources planétaires (l''énergie Mako) par la Shinra.',30,24.99,'Gentil'),
(3,'Cloud', 'Cloud Strife est le principal héros de Final Fantasy VII. Convaincu d''être un ancien SOLDAT, il est au début du jeu un mercenaire employé par AVALANCHE.',37,34.99,'Gentil'),
(4,'Nanaki', 'Rouge XIII, de son vrai nom Nanaki, est l''un des derniers survivants de sa tribu, composée de personnages proches des félidés (lion, tigre, jaguar, ...) par leur aspect physique, vivant à Cosmo Canyon.',25,24.99,'Animal'),
(5,'Sephiroth', 'Sephiroth est présenté au cours du jeu comme le fils de Hojo, un savant fou, et de Lucrécia, son assistante.',35,34.99,'Méchant'),
(6,'Tifa', 'Tifa Lockheart est une jeune femme originaire de Nibelheim, amie d''enfance de Cloud et membre du groupe AVALANCHE',35,24.99,'Gentil');

-- gender

CREATE TABLE IF NOT EXISTS "gender" (
  "id" INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  "name" TEXT
);

INSERT INTO "figurine"("id","name", "description", "size", "price", "category") VALUES
(1,'Aerith', 'Aerith Gainsborough est la dernière descendante des Cetras (ou Anciens), fille du professeur Gast et d''Ifalna',35,24.99,'Gentil'),
(2,'Barret', 'Barret Wallaceest le chef d''AVALANCHE, groupe écologiste de résistance à l''épuisement des ressources planétaires (l''énergie Mako) par la Shinra.',30,24.99,'Gentil'),
(3,'Cloud', 'Cloud Strife est le principal héros de Final Fantasy VII. Convaincu d''être un ancien SOLDAT, il est au début du jeu un mercenaire employé par AVALANCHE.',37,34.99,'Gentil'),
(4,'Nanaki', 'Rouge XIII, de son vrai nom Nanaki, est l''un des derniers survivants de sa tribu, composée de personnages proches des félidés (lion, tigre, jaguar, ...) par leur aspect physique, vivant à Cosmo Canyon.',25,24.99,'Animal'),
(5,'Sephiroth', 'Sephiroth est présenté au cours du jeu comme le fils de Hojo, un savant fou, et de Lucrécia, son assistante.',35,34.99,'Méchant'),
(6,'Tifa', 'Tifa Lockheart est une jeune femme originaire de Nibelheim, amie d''enfance de Cloud et membre du groupe AVALANCHE',35,24.99,'Gentil');

-- age

CREATE TABLE IF NOT EXISTS "age" (
  "id" INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  "name" TEXT,
  "number" NUMBER
);

INSERT INTO "figurine"("id","name", "description", "size", "price", "category") VALUES
(1,'Aerith', 'Aerith Gainsborough est la dernière descendante des Cetras (ou Anciens), fille du professeur Gast et d''Ifalna',35,24.99,'Gentil'),
(2,'Barret', 'Barret Wallaceest le chef d''AVALANCHE, groupe écologiste de résistance à l''épuisement des ressources planétaires (l''énergie Mako) par la Shinra.',30,24.99,'Gentil'),
(3,'Cloud', 'Cloud Strife est le principal héros de Final Fantasy VII. Convaincu d''être un ancien SOLDAT, il est au début du jeu un mercenaire employé par AVALANCHE.',37,34.99,'Gentil'),
(4,'Nanaki', 'Rouge XIII, de son vrai nom Nanaki, est l''un des derniers survivants de sa tribu, composée de personnages proches des félidés (lion, tigre, jaguar, ...) par leur aspect physique, vivant à Cosmo Canyon.',25,24.99,'Animal'),
(5,'Sephiroth', 'Sephiroth est présenté au cours du jeu comme le fils de Hojo, un savant fou, et de Lucrécia, son assistante.',35,34.99,'Méchant'),
(6,'Tifa', 'Tifa Lockheart est une jeune femme originaire de Nibelheim, amie d''enfance de Cloud et membre du groupe AVALANCHE',35,24.99,'Gentil');
