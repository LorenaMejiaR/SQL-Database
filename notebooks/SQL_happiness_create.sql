CREATE DATABASE IF NOT EXISTS happiness_sql;
USE happiness_sql;

DROP TABLE IF EXISTS descriptors;
CREATE TABLE descriptors (descriptor_id BIGINT AUTO_INCREMENT, name VARCHAR (255), PRIMARY KEY (descriptor_id));

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (country_id BIGINT AUTO_INCREMENT, name VARCHAR (255), PRIMARY KEY (country_id));

DROP TABLE IF EXISTS scores;
CREATE TABLE scores (id BIGINT AUTO_INCREMENT, happiness_rank BIGINT, descriptor_id BIGINT, country_id BIGINT, score DECIMAL (6,3), year BIGINT, PRIMARY KEY (id), FOREIGN KEY (descriptor_id) REFERENCES descriptors (descriptor_id), FOREIGN KEY (country_id) REFERENCES countries (country_id));
