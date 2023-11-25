CREATE SCHEMA relationships_one_to_many;

SET search_path TO relationships_one_to_many;

CREATE TABLE authors
(
    id   BIGSERIAL   NOT NULL PRIMARY KEY,
    name VARCHAR(64) NOT NULL
);

CREATE TABLE books
(
    id        BIGSERIAL    NOT NULL PRIMARY KEY,
    title     VARCHAR(128) NOT NULL,
    author_id BIGINT       NOT NULL REFERENCES authors (id)
);