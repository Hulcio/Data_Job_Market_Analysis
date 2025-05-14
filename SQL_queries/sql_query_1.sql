--What are the highest paying positions in data industry?

SELECT 
    job_title_short as position,
    ROUND(AVG(salary_year_avg)) as avg_salary
FROM job_postings_fact
GROUP BY job_title_short
ORDER BY avg_salary DESC 
LIMIT 10


--What are the highest paying companies (with more that 5 job offert)?

SELECT 
    company_dim.name,
    ROUND(AVG(salary_year_avg)) as avg_salary,
    COUNT(*) as quantity_jobs
FROM company_dim
INNER JOIN job_postings_fact
    ON company_dim.company_id = job_postings_fact.company_id
WHERE
    salary_year_avg IS NOT NULL
GROUP BY
    company_dim.name
HAVING
    Count(*) > 5
ORDER BY avg_salary DESC
LIMIT 10

--Which employers have the most remote job positions ?

SELECT 
    name,
    COUNT(*) as remonte_job_offert
FROM company_dim
INNER JOIN job_postings_fact as jpf
    ON jpf.company_id = company_dim.company_id
WHERE
    job_location = 'Anywhere'
GROUP BY
    name 
ORDER BY remonte_job_offert DESC
LIMIT 15


