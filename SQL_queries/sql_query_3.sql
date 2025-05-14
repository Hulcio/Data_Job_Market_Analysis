--What are the most demanded skills for Data Analyst

SELECT 
    skills_dim.skills as skill,
    COUNT(*) as demand_skill_count
FROM job_postings_fact
INNER JOIN skills_job_dim
    ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim
    ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    skill
ORDER BY
    demand_skill_count DESC
LIMIT 15

--What are the higest paying skills for DATA Analyst (reqired more than 10 times)

SELECT
    skills_dim.skills,
    ROUND(AVG(salary_year_avg)) AS avg_salary_per_skill
FROM job_postings_fact
INNER JOIN skills_job_dim
    ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim
    ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills_dim.skills
HAVING COUNT(*) > 10
ORDER BY
    avg_salary_per_skill DESC
LIMIT 15
