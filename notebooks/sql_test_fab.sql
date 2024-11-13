show processlist;
CREATE DATABASE IF NOT EXISTS w4grplab;

USE w4grplab;

CREATE TABLE factors (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,   -- A unique identifier for each record
    country VARCHAR(255),                   -- Country name, assuming it's a string
    year INT,                               -- Year of the data
    happiness DECIMAL(5, 2),                -- Happiness score, with 2 decimal points
    GDP DECIMAL(15, 2),                     -- GDP value, with 2 decimal points
    social_support DECIMAL(5, 2),           -- Social support value, with 2 decimal points
    healthy DECIMAL(5, 2),                  -- Healthy life expectancy, with 2 decimal points
    freedom DECIMAL(5, 2),                  -- Freedom to make life choices, with 2 decimal points
    generosity DECIMAL(5, 2),               -- Generosity score, with 2 decimal points
    corruption DECIMAL(5, 2)                -- Corruption score, with 2 decimal points
);


LOAD DATA LOCAL INFILE 'combined_happiness_data.csv'
INTO TABLE factors
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\\n'
IGNORE 1 ROWS;
