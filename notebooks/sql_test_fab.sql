show processlist;
CREATE DATABASE IF NOT EXISTS w4grplab;
DROP DATABASE IF EXISTS w4grplab;

USE w4grplab;

CREATE TABLE `countries`(
    `country_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);
CREATE TABLE `scores`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `descriptor_id` BIGINT NOT NULL,
    `country_id` BIGINT NOT NULL,
    `score` DECIMAL(8, 2) NOT NULL,
    `year` BIGINT NOT NULL
);
CREATE TABLE `descriptors`(
    `descriptor_id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `scores` ADD CONSTRAINT `scores_country_id_foreign` FOREIGN KEY(`country_id`) REFERENCES `countries`(`country_id`);
ALTER TABLE
    `scores` ADD CONSTRAINT `scores_descriptor_id_foreign` FOREIGN KEY(`descriptor_id`) REFERENCES `descriptors`(`descriptor_id`);


/*LOAD DATA LOCAL INFILE 'combined_happiness_data.csv'
INTO TABLE factors
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\\n'
IGNORE 1 ROWS;*/
