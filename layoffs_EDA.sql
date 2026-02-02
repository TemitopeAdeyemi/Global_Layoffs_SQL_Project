-- EXPLORATORY DATA ANALYSIS (EDA)
-- Using cleaned layoffs dataset (layoffs_staging2)

-- View the entire dataset
SELECT *
FROM layoffs_staging2;

-- Summary statistics
-- Maximum number of employees laid off in a single record
SELECT MAX(total_laid_off)
FROM layoffs_staging2;

-- Maximum layoffs (number and percentage)
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

-- Records where 100% of employees were laid off
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1;

-- 100% layoffs ordered by total number of employees laid off (descending order)
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

-- 100% layoffs ordered by funds raised (descending order)
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- Total layoffs by company
SELECT company, SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY company;

-- Total layoffs by company, ordered descending
SELECT company, SUM(total_laid_off) AS total_laid_off
FROM layoffs_staging2
GROUP BY company
ORDER BY total_laid_off DESC;
