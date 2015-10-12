/**
 * create database
 */
-- CREATE DATABASE book ENCODING 'UTF8';

CONNECT TO 'book';

-- CREATE TABLE books (
--   id serial,
--   title varchar(255) NOT NULL,
--   price integer NOT NULL,
--   description varchar(65535),
--   category varchar(64),
--   created_at timestamp without time zone,
--   updated_at timestamp without time zone,
--   PRIMARY KEY(id)
-- );
--
-- CREATE DATABASE book_development ENCODING 'UTF8' TEMPLATE book;
-- CREATE DATABASE book_test ENCODING 'UTF8' TEMPLATE book;
