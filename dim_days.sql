/* Date dimention */
/* Date period: from 1900-01-01 to YEAR(current_date) + 3  */

WITH cte_array_dates as (
  SELECT DATEADD(day, SEQ4(), '1900-01-01') AS CTE_DATE FROM TABLE(GENERATOR(ROWCOUNT=>3560))
)
SELECT CTE_DATE::DATE AS day,
       date_part(DAY, CTE_DATE::DATE) AS day,
       date_part(MONTH, CTE_DATE::DATE) AS month,
       date_part(YEAR, CTE_DATE::DATE) AS year,
       DAYNAME(CTE_DATE::DATE) AS day_name,
       DAYOFWEEK(CTE_DATE::DATE) AS day_in_week,
       DAYOFWEEKISO(CTE_DATE::DATE) AS day_in_weekiso,
       WEEK(CTE_DATE::DATE) AS week,
       WEEKISO(CTE_DATE::DATE) AS weekiso,
       DAYOFYEAR(CTE_DATE::DATE) day_in_year,       
       QUARTER(CTE_DATE) AS qrt    
 FROM cte_array_dates;
