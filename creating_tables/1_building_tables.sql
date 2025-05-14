
--creating COMPANY table (we need to create it first due to company_id PRIMARY KEY use in next table)
CREATE TABLE company_dim
    (
    company_id SERIAL PRIMARY KEY,
    name TEXT,
    link TEXT,
    link_google TEXT,
    thumbnail TEXT
    );

--Creating MAIN table
CREATE TABLE job_postings_fact
    (
    job_id SERIAL PRIMARY KEY,
    company_id INT,
    job_title_short VARCHAR (255),
    job_title VARCHAR (255),
    job_location VARCHAR (255),
    job_via VARCHAR (255),
    job_schedule_type TEXT,
    job_work_from_home BOOLEAN,
    search_location TEXT,
    job_posted_date TIMESTAMP,
    job_no_degree_mention BOOLEAN,
    job_health_insurance BOOLEAN,
    job_country VARCHAR(255),
    salary_rate FLOAT,
    salary_year_avg FLOAT,
    salary_hour_avg FLOAT,
    FOREIGN KEY (company_id) REFERENCES company_dim(company_id)
);


-- creating SKILL table
CREATE TABLE skills_dim
    (
    skill_id SERIAL PRIMARY KEY,
    skills TEXT,
    type TEXT
    );

-- creating association table (jobs & skills)
CREATE TABLE skills_job_dim
    (
    job_id INT,
    skill_id INT,
    PRIMARY KEY (job_id,skill_id),
    FOREIGN KEY (job_id) REFERENCES job_postings_fact(job_id),
    FOREIGN KEY (skill_id) REFERENCES skills_dim(skill_id)
    );
--creating index for foreigns keys
CREATE INDEX idx_company_id ON job_postings_fact(company_id);
CREATE INDEX idx_skill_id ON skills_job_dim(skill_id);
CREATE INDEX idx_job_id ON skills_job_dim(job_id);
