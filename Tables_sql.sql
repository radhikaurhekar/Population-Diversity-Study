CREATE SCHEMA Population_Diversity;

USE Population_Diversity;

CREATE TABLE Country (
    CountryCode CHAR(3),
    Country VARCHAR(100) NOT NULL,
    Continent VARCHAR(50),
    Region VARCHAR(50),
    SurfaceArea DECIMAL(10,2),
    Population INT,
    LifeExpectancy DECIMAL(4,1),
    PRIMARY KEY (CountryCode)
);

CREATE TABLE City (
    CityID INT AUTO_INCREMENT,
    City VARCHAR(100) NOT NULL,
    CountryCode CHAR(3),
    District VARCHAR(100),
    Population INT,
    PRIMARY KEY (CityID),
    FOREIGN KEY (CountryCode)
        REFERENCES Country(CountryCode)
        ON DELETE CASCADE
);

CREATE TABLE Country_Language (
    CountryCode CHAR(3),
    Language VARCHAR(50),
    Percentage DECIMAL(5,2),
    PRIMARY KEY (CountryCode, Language),
    FOREIGN KEY (CountryCode)
        REFERENCES Country(CountryCode)
        ON DELETE CASCADE
);




