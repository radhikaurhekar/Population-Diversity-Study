#  Global Population-Diversity

A complete data pipeline that takes data from 3 different datasets, normalizes it into a relational MySQL database, runs analytical SQL queries, and visualizes the findings in a Jupyter Notebook report.


## Research Questions
1. Which Countries have the highest and lowest life expectancy?
2. Which languages are the most spoken in the world?
3. Which are the densely and sparsely populated countries in the world?
4. Which countries have highest wealth per unit area?


## Key Findings
1.Andorra is having highest life expectancy of around 83.5 years.
  Mozambique is having lowest life expectancy of around 37.5 years.
2.The most spoken language in the world is English.
3.Macao is most densely populated country.
  Greenland is the most sparsely populated country.
4.The country with the most wealth per unit area is Monaco.

## Database Schema

The raw dataset is containing 3 tables such as city,country,language. Different variables can be seen in Schema below.

![Database Schema](EER Diagram.png")


## Project Structure

population_diversity_project/
│
├── README.md
├── data-processing.ipynb        # ETL: clean, normalize, export CSVs
├── main.ipynb                   # Analysis & visualization
│
├── sql-scripts/
│   ├── create-schema.sql        # MySQL DDL (CREATE DATABASE, TABLES)
│   └── queries.sql              # Analytical SQL queries
│
├── data/
│   ├── raw/
│   │   ├── city.csv             # Raw city dataset
│   │   ├── country.csv          # Raw country dataset
│   │   └── country_language.csv # Raw language dataset
│   │
│   ├── processed/
│   │   ├── countries.csv        # Cleaned country table
│   │   ├── cities.csv           # Cleaned city table
│   │   └── languages.csv        # Cleaned language table
│   │
│   └── query-results/
│       ├── 1. Highest and lowest life expectancy by country.csv
│       ├── 2. Most spoken languages in the world.csv
│       ├── 3. Population density analysis (dense vs sparse countries).csv
│       └── 4. Wealth per unit area (GNP per surface area).csv
│



## How to Reproduce

1. **Data processing** — Run `city.ipnynb`,`country.ipnynb`,`countrylanguage.ipnynb` to clean the raw CSV and export the 3 normalized tables to `data/Cleaning_and_Standardization/`.

2. **Create the database** — Open `Data_sql` in MySQL Workbench and execute it to create `tables_sql` with 3 tables.

3. **Import data** — Use MySQL Workbench's Table Data Import Wizard. Import in order:
   - `city_sql.csv` (has foreign keys)
   - `country_sql.csv` (no foreign keys)
   - `language_sql.csv` (has foreign keys)

4. **Run queries** — Execute `queries_sql` in MySQL Workbench. Export each result set to `Results/`.

5. **View the report** — Run `data_analysis_graphics.ipynb` to load query results and generate all visualizations.

## Tools

- **Python** — Pandas, Matplotlib
- **MySQL** — MySQL Workbench
- **Jupyter Notebooks**

## Data Source
https://www.kaggle.com/datasets/adilshamim8/world-cities-countries-and-languages-dataset?resource=download&select=countrylanguage.csv

## Presentation 
https://docs.google.com/presentation/d/1LxDth10fMDBlNx3LuMWnedwT6qNQ9oer/edit?slide=id.p4#slide=id.p4

