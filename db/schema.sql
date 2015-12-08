DROP TABLE IF EXISTS boroughs;
DROP TABLE IF EXISTS neighborhoods;
DROP TABLE IF EXISTS lounges;
DROP TABLE IF EXISTS users;

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

CREATE TABLE lounges (
  id INTEGER PRIMARY KEY,
  name VARCHAR,
  address VARCHAR,
  neighborhood_id INTEGER REFERENCES neighborhoods(id),
  img_url VARCHAR,
  hours VARCHAR,
  style VARCHAR,
  food VARCHAR,
  alcohol VARCHAR,
  music VARCHAR
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR,
  password_digest VARCHAR
);