--changing incorrect TYPE of data
ALTER TABLE job_postings_fact
    ALTER COLUMN salary_rate TYPE TEXT;

ALTER TABLE job_postings_fact
    ALTER COLUMN salary_year_avg TYPE NUMERIC;

ALTER TABLE job_postings_fact
    ALTER COLUMN salary_hour_avg TYPE NUMERIC;

COPY company_dim
FROM 'C:\Users\mateu\Desktop\SQL_2\csv_files\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'C:\Users\mateu\Desktop\SQL_2\csv_files\job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'C:\Users\mateu\Desktop\SQL_2\csv_files\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'C:\Users\mateu\Desktop\SQL_2\csv_files\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
