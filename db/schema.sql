DROP TABLE IF EXISTS boroughs;
DROP TABLE IF EXISTS neighborhoods;
DROP TABLE IF EXISTS cafes;

CREATE TABLE boroughs (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  img_url VARCHAR
);

CREATE TABLE neighborhoods (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  borough_id INTEGER REFERENCES boroughs(id)
);

CREATE TABLE cafes (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  address VARCHAR,
  neighborhood_id INTEGER REFERENCES neighborhoods(id),
  photo VARCHAR,
  hours VARCHAR,
  food VARCHAR,
  alcohol VARCHAR,
  music VARCHAR,
  Menu VARCHAR
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR
);