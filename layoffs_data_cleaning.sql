-- GLOBAL LAYOFFS DATA CLEANING PROJECT (MYSQL)

-- STEP 1: VIEW RAW DATA
-- Purpose: Understand the structure of the original table 

SELECT *
FROM layoffs;

-- STEP 2: CREATE FIRST STAGING TABLE
-- Purpose: Protect raw data by working on a copy

DROP TABLE IF EXISTS layoffs_staging;

CREATE TABLE layoffs_staging
LIKE layoffs;

INSERT INTO layoffs_staging
SELECT *
FROM layoffs;

-- STEP 3: IDENTIFY DUPLICATES
-- Purpose: Use ROW_NUMBER() to detect duplicate rows

SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY company, location, industry, total_laid_off,
    percentage_laid_off, `date`, stage, country, funds_raised_millions
) AS row_num
FROM layoffs_staging;

-- STEP 4: CREATE SECOND STAGING TABLE FOR DEDUPLICATION
-- Purpose: Safely remove duplicate records

DROP TABLE IF EXISTS layoffs_staging2;

CREATE TABLE layoffs_staging2 (
  company TEXT,
  location TEXT,
  industry TEXT,
  total_laid_off INT DEFAULT NULL,
  percentage_laid_off TEXT,
  `date` TEXT,
  stage TEXT,
  country TEXT,
  funds_raised_millions INT DEFAULT NULL,
  row_num INT
);

-- Insert data while assigning row numbers
INSERT INTO layoffs_staging2
SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY company, location, industry, total_laid_off,
    percentage_laid_off, `date`, stage, country, funds_raised_millions
) AS row_num
FROM layoffs_staging;

-- View duplicate rows
SELECT *
FROM layoffs_staging2
WHERE row_num > 1;
