--WHEN is the best period for looking job as DATA Analyst ??

SELECT
    EXTRACT(MONTH FROM job_posted_date) AS month_num,
    COUNT(*) AS job_count
FROM job_postings_fact
GROUP BY month_num
LIMIT 15