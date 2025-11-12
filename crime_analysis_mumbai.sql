CREATE DATABASE IF NOT EXISTS CRIME_ANALYSIS;
USE CRIME_ANALYSIS;

CREATE TABLE IPC(
ID INT AUTO_INCREMENT PRIMARY KEY,
`Crime Heads` VARCHAR(200),
sep25_R INT,
sep25_D INT, 
aug25_R INT, 
aug_25_D INT,
this_yr_R INT, 
this_yr_D INT,
`% of Detection_this` INT, 
prev_yr_R INT, 
prev_yr_D INT,
`% of Detection_prev` INT
);

CREATE TABLE women(
ID INT AUTO_INCREMENT PRIMARY KEY,
`Crime Heads` VARCHAR(500),
sep25_R INT,
sep25_D INT, 
aug25_R INT, 
aug25_D INT,
this_yr_R INT, 
this_yr_D INT,
`% of Det_this` INT, 
prev_yr_R INT, 
prev_yr_D INT,
`% of Det_prev` INT
);

CREATE TABLE ndps(
ID INT AUTO_INCREMENT PRIMARY KEY,
`Drugs Name` VARCHAR(200), 
`No. of Cases` INT,
`No. of Person Arrested` INT,
`Quantity(kg)` FLOAT,
`Values` BIGINT
);

CREATE TABLE brothels(
ID INT AUTO_INCREMENT PRIMARY KEY,
sep25_cases INT,
this_yr INT,
prev_yr INT,
sep25_res INT,
this_yr_res INT,
prev_yr_res INT,
sep25_arr INT,
this_yr_arr INT,
prev_yr_arr INT,
arr_per_case_this INT,
arr_per_case_prev INT,
res_per_case_this INT,
res_per_case_prev INT
);

CREATE TABLE ecconomic_offenses(
ID INT AUTO_INCREMENT PRIMARY KEY,
sep25_R INT,
sep25_D INT, 
aug25_R INT, 
aug25_D INT,
this_yr_R INT, 
this_yr_D INT,
`% of Det_this` INT, 
prev_yr_R INT, 
prev_yr_D INT,
`% of Det_prev` INT
);

CREATE TABLE cyber(
ID INT AUTO_INCREMENT PRIMARY KEY,
`Head Wise Crime` VARCHAR(300),
`Reg.` INT,
`Det.` INT,
`PA` INT,
persons_arr_percase FLOAT,
`share` FLOAT, 
`%det` FLOAT,
Arrest_rate FLOAT
);
 
-- Data uploaded into MySQL.

SET SQL_SAFE_UPDATES = 0;

-- IPC crimes.
DELETE FROM IPC
WHERE `Crime Heads` = 'Total IPC';

-- top 10 crimes in sep 25
SELECT `Crime Heads`, sep25_R 
FROM IPC
ORDER BY sep25_R DESC
LIMIT 10;

-- overall detection rate of IPC crimes
SELECT (SUM(sep25_D)/SUM(sep25_R))*100 AS OVERALL_DET_RATE
FROM IPC;

-- BIGGEST MONTH TO MONTH INC
SELECT `Crime Heads`, (sep25_R-aug25_R) as MONTHLY_CHANGE
FROM IPC
ORDER BY MONTHLY_CHANGE DESC;

-- PROBLEMATIC CASES. HIGH VOLUME BUT LOW DETECTION.
SELECT `Crime Heads`, sep25_R, sep25_D 
FROM IPC
WHERE (sep25_R>(SELECT AVG(sep25_R) FROM IPC))
AND (sep25_D<(SELECT AVG(sep25_D) FROM IPC))
ORDER BY sep25_R DESC;

-- WOMEN

-- TOP CRIMES
SELECT `Crime Heads`, sep25_R, sep25_D, ROUND(((sep25_D/sep25_R)*100),2) AS DET_PCT
FROM WOMEN 
ORDER BY DET_PCT DESC
LIMIT 10;

-- CRIMES IN WHICH THE DET PERCENTAGE INC THE MOST FRM PREV YR TO THIS YR. 
SELECT `Crime Heads`, (`% of Det_this` - `% of Det_prev`) AS IMPROVEMENT
FROM women
ORDER BY IMPROVEMENT DESC
LIMIT 5;

-- NDPS

-- TOP DRUGS
SELECT `Drugs Name`, `No. of Cases` AS CASES_NUM 
FROM ndps
ORDER BY CASES_NUM DESC
LIMIT 5;

-- CYBER

-- CRIMES WITH HIGHEST DETECTION PERCENTAGE.
SELECT `Head Wise Crime`, `Reg.`, `Det.`, (`Det.`/`Reg.`)*100 AS DET_PCT
FROM cyber
ORDER BY DET_PCT DESC
LIMIT 5;

-- CRIMES WITH MAX NO. OF PEOPLE ARRESTED
SELECT `Head Wise Crime`, PA 
FROM cyber
ORDER BY PA DESC
LIMIT 5;
