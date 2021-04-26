BEGIN;

-- breed

INSERT INTO "breed" ("breed_id", "name") VALUES
(1, 'Norwegian'),
(2, 'European'),
(3, 'Maine Coon'),
(4, 'Birman'),
(5, 'Scottish Fold'),
(6, 'Ragdoll');

-- location

INSERT INTO "location" ("location_id", "city", "department") VALUES
(1, 'Bordeaux', 33),
(2, 'Paris', 75),
(3, 'Lyon', 69),
(4, 'Nantes', 44),
(5, 'Strasbourg', 67),
(6, 'La Rochelle', 17);

-- gender

INSERT INTO "gender" ("gender_id", "name") VALUES
(1, 'male'),
(2, 'female'),
(3, 'unknown');

-- age

INSERT INTO "age" ("age_id", "name") VALUES
(1, 'baby'),
(2, 'junior'),
(3, 'adult'),
(4, 'senior');

-- cat

INSERT INTO "cat" ("id", "name", "age", "description", "status", "breed_id", "location_id", "gender_id", "age_id") VALUES
(1, 'Azuki', 5, 'meow for food, then when human fills food dish, take a few bites of food and continue meowing claw', 'Adoption', 1, 1, 2, 3),
(2, 'Sosuke', 0.7, 'Spread kitty litter all over house i like fish refuse to come home when humans are going to bed; stay out all night then yowl like i am dying at 4am', 'Adoption', 2, 1, 1, 1),
(3, 'Caramel', 2, 'Poop on the floor, break a planter, sprint, eat own hair, vomit hair, hiss, chirp at birds, eat a squirrel, hide from fireworks','Perdu', 3, 2, 1, 2),
(4, 'Moustache', 9, 'Meow. Stare at wall turn and meow stare at wall some more meow again continue staring disappear for four days','Adoption', 4, 2, 1, 4),
(5, 'Pompon', 4, 'Dream about hunting birds massacre a bird in the living room and then look like the cutest and most innocent animal on the planet','Perdu', 5, 3, 2, 3),
(6, 'Croquette', 0.5, 'Croquette tu vas nous manquer','Adoption', 6, 3, 2, 1);

COMMIT;
