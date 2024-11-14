-- QUERIES FOR DATABASE

USE happiness_sql;

SELECT * from happiness_sql.scores;
-- CALCULATE MAX AND MIN SCORE FOR EACH DESCRIPTOR
SELECT
    descriptor_id,
    MAX(score) AS Max_Score,
    MIN(CASE WHEN score > 0 THEN score END) AS Min_Score
FROM
    scores
GROUP BY
    descriptor_id;
    
-- FIND MEAN PER YEAR FOR HAPPINESS SCORE    
    SELECT
    year,
    AVG(score) AS Mean_Score
FROM
    scores
WHERE
    descriptor_id = 1001
GROUP BY
    year;

-- FIND MEDIAN PER YEAR FOR HAPPINESS SCORE    

WITH OrderedScores AS (
  SELECT 
    score,
    year,
    ROW_NUMBER() OVER (PARTITION BY year ORDER BY score) AS rn_asc,
    ROW_NUMBER() OVER (PARTITION BY year ORDER BY score DESC) AS rn_desc,
    COUNT(*) OVER (PARTITION BY year) AS ct
  FROM scores
  WHERE descriptor_id = 1001)
SELECT 
  year,
  ROUND(AVG(score), 2) AS median_score  
FROM 
  OrderedScores
WHERE 
  rn_asc = rn_desc OR rn_asc + 1 = rn_desc
GROUP BY 
  year;
  
  -- FIND STANDAR DEVIATION PER YEAR FOR HAPPINESS SCORE    

SELECT 
  year,
  ROUND(STDDEV(score), 2) AS std_dev_score
FROM 
  scores
WHERE 
  descriptor_id = 1001
GROUP BY 
  year;

-- LIST OF TOP 5 COUNTRIES WITH THE HIGHEST AVERAGE HAPPINESS SCORE OVER THE LAST 5 YEARS

SELECT c.name AS Country_Name, AVG(s.score) AS Mean_Score
FROM scores AS s
JOIN countries AS c ON s.country_id = c.country_id
WHERE s.descriptor_id = 1001
GROUP BY s.country_id
ORDER BY Mean_Score DESC
LIMIT 5;

-- LIST OF TOP 5 COUNTRIES WITH THE LOWEST AVERAGE HAPPINESS SCORE OVER THE LAST 5 YEARS

SELECT c.name AS Country_Name, AVG(s.score) AS Mean_Score
FROM scores AS s
JOIN countries AS c ON s.country_id = c.country_id
WHERE s.descriptor_id = 1001
GROUP BY s.country_id
ORDER BY Mean_Score ASC
LIMIT 5;

