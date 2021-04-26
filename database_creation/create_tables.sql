BEGIN;

DROP TABLE IF EXISTS "cat",
"breed",
"location",
"gender",
"age";

-- breed

CREATE TABLE IF NOT EXISTS "breed" (
  "breed_id" SERIAL PRIMARY KEY,
  "name" TEXT
);

-- location

CREATE TABLE IF NOT EXISTS "location" (
  "location_id" SERIAL PRIMARY KEY,
  "city" TEXT,
  "department" INT NOT NULL
);

-- gender

CREATE TABLE IF NOT EXISTS "gender" (
  "gender_id" SERIAL PRIMARY KEY,
  "name" TEXT
);

-- age

CREATE TABLE IF NOT EXISTS "age" (
  "age_id" SERIAL PRIMARY KEY,
  "name" TEXT
);

-- cat

CREATE TABLE IF NOT EXISTS "cat" (
  "id" SERIAL PRIMARY KEY,
  "name" TEXT,
  "age" INT NOT NULL,
  "description" TEXT,
  "status" TEXT,
  "picture_url" TEXT,
  "breed_id" INT,
  "location_id" INT,
  "gender_id" INT,
  "age_id" INT,
  FOREIGN KEY("breed_id") REFERENCES "breed" ("breed_id"),
  FOREIGN KEY("location_id") REFERENCES "location" ("location_id"),
  FOREIGN KEY("gender_id") REFERENCES "gender" ("gender_id"),
  FOREIGN KEY("age_id") REFERENCES "age" ("age_id")
);

COMMIT;
