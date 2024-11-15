# Data Analysis with SQL - World Happiness Score 

Welcome to the SQL-Database World Happiness Score repository! This is part of a group project to provide clean, structured data and in-depth analysis on the world happiness score. Our mission was to dive into the world of SQL through creating and populating a database and then extracting meaningful insights through SQL using queries and Python visualization techniques. 

## Project Overview

We use information fron the World Happiness Report (WHP). The WHR reflects a worldwide demand for more attention to happiness and well-being as criteria for government policy.
It shows how the science of happiness explains personal and national variations in happiness.

We use data on the following six factors to explain life satisfaction acrosscountries: 
1. GDP per capita
2. Social Support 
3. Healthy Life Expectancy
4. Freedom to make choices
5. Generosity
6. Perceived corruption

## Research question

In the happiness equation:
(GDP per capita + Social support + Healthy + Freedom + Generosity + Corruption)

Which factor is more important?

## Hypotheses
1. Healthy life expectancy has a greater impact on our happiness than GDP.
2. Freedom to make choices has a greater impact on our happiness than GDP.
3. Social support has a greater impact on our happiness than GDP.
4. Generosity has a greater impact on our happiness than GDP.

### Tools and Resources

- **Jupyter Lab**: A powerful open-source tool for interactive data analysis and visualization.
- **Python**: The primary language used for data processing, cleaning, and analysis.
- **Python Libraries**:
    - `pandas` for data manipulation.
    - `numpy` for numerical operations.
    - `matplotlib`, `plotly` and `seaborn` for data visualization.
    - `statsmodels.api` for statistical analysis. 
      
- **Draw SQL**: A porwerful tool to create the Entity-Relational-Model (ERM).
- **SQL**: A porwerful tool to create the database, loading clean data and summarization. 

## Data and Conclusions

This project leverages 5 datasets from the Cantril Ladder to gather relevant data on world happiness. The Cantril Ladder is a tool used to measure subjective well-being or life satisfaction.
It asks individuals to rate their life on a scale from 0 (the worst possible life) to 10 (the best possible life).

1. **Data Acquisition** – We use 5 data sets from Kaggle from 2018 to 2022.
2. **Data Cleaning and Wrangling** – Preparing raw data and merging it for analysis in Python and SQL. 
3. **Analysis and Correlation** – Exploring the relationships between the happiness score and the other variables, we found that happiness is highly related to GDP, Healthy life expectancy, Social support and Freedom to make choices. 
4. **Conclusions** – After doing an OLS regression results we came with two main conclusions: 1) Freedom to make choices (2.1680, p>0.001) and Healthy life expectancy (1.1431, p>0.001) have a greater impact in Happiness thant GDP (0.8026, p>0.001). 2) Social support (0.7700, p>0.001) has less impact in Happiness than GDP. 

### Presentation Link

The slides were made using Canva and present in the following link:
https://www.canva.com/design/DAGWX1kecpk/6oz2QTBQekEp59OIM9uAmw/edit?utm_content=DAGWX1kecpk&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

### The Team

- Alvaro
- Ceci
- Fabian
- Lorena
