# Population-Diversity-Study

About Dataset

This dataset provides a structured view of the world’s cities, countries, and languages, derived from the well-known World Database (SQL → CSV). It is designed to be beginner-friendly yet powerful for researchers, analysts, and data scientists who want to explore global demographics, population distribution, and linguistic diversity.

The dataset is split into three clean, relational tables:
🔹 city.csv

    Contains information about the world’s cities.

    Key columns:
        ID → Unique city identifier
        Name → City name
        CountryCode → Links each city to its country
        District → Administrative division
        Population → Population of the city

🔹 country.csv

    Describes countries and their attributes.

    Key columns:
        Code → Unique country code
        Name → Country name
        Continent, Region → Geographic classification
        SurfaceArea → Area in square kilometers
        Population → Country’s population
        GovernmentForm, HeadOfState → Political details

🔹 countrylanguage.csv

    Captures languages spoken across countries.

    Key columns:
        CountryCode → Links to country.csv
        Language → Language name
        IsOfficial → Whether the language is official
        Percentage → Percentage of speakers in the population


Which Countries have a highest life expenctancy?
Which languages are the most spoken in the world?
Which the most populated cities? 

https://www.kaggle.com/datasets/adilshamim8/world-cities-countries-and-languages-dataset?resource=download&select=countrylanguage.csv
