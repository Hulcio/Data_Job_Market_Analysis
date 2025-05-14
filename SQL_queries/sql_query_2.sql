--Does remote work affect salary?
 
WITH
remonte_salary AS
(
        SELECT 
        job_title_short as position,
        ROUND(AVG(salary_year_avg)) as avg_remonte_salary
    FROM
        job_postings_fact
    WHERE
        job_location = 'Anywhere'
    GROUP BY
        job_title_short
    ORDER BY
        avg_remonte_salary DESC 
),
stationary_salary AS
(
    SELECT 
        job_title_short as position,
        ROUND(AVG(salary_year_avg)) as avg_stationary_salary
    FROM
        job_postings_fact
    WHERE
        job_location != 'Anywhere'
    GROUP BY
        job_title_short
    ORDER BY
        avg_stationary_salary DESC 
)

SELECT 
    remonte_salary.position,
    remonte_salary.avg_remonte_salary,
    stationary_salary.avg_stationary_salary
FROM 
    remonte_salary
FULL JOIN stationary_salary
ON stationary_salary.position = remonte_salary.position
ORDER BY avg_remonte_salary DESC

---- Is there a difference in pay depending on benefits (insurance, no diploma requirement)?


WITH
with_insurance AS
(
    SELECT 
        job_title_short as position,
        ROUND(AVG(salary_year_avg)) as avg_with_insurance_salary
    FROM
        job_postings_fact
    WHERE
        job_health_insurance = 'true'
    GROUP BY
        job_title_short
    ORDER BY
        avg_with_insurance_salary DESC 
),
no_degree AS
(
    SELECT 
        job_title_short as position,
        ROUND(AVG(salary_year_avg)) as avg_no_degree_salary
    FROM
        job_postings_fact
    WHERE
        job_no_degree_mention = 'true'
    GROUP BY
        job_title_short
    ORDER BY
        avg_no_degree_salary DESC 
),
no_conditions AS
(
    SELECT 
        job_title_short as position,
        ROUND(AVG(salary_year_avg)) as avg_no_conditions
    FROM
        job_postings_fact
    GROUP BY
        job_title_short
    ORDER BY
        avg_no_conditions DESC 

)

SELECT 
    with_insurance.position AS position,
    no_conditions.avg_no_conditions AS avg,
    with_insurance.avg_with_insurance_salary AS avg_with_insurance,
    no_degree.avg_no_degree_salary AS avg_no_degree
FROM
    with_insurance
FULL JOIN no_degree
    ON no_degree.position = with_insurance.position
INNER JOIN no_conditions
    ON no_conditions.position = no_degree.position
ORDER BY
    avg DESC

