-- ROUND --> The Oracle/PLSQL ROUND function returns a number rounded to a certain number of decimal places.
-- FLOOR --> The Oracle/PLSQL FLOOR function returns the largest integer value that is equal to or less than a number.

SELECT COUNTRY.CONTINENT,FLOOR(AVG(CITY.POPULATION)) FROM CITY,COUNTRY WHERE CITY.COUNTRYCODE = COUNTRY.CODE GROUP BY COUNTRY.CONTINENT;