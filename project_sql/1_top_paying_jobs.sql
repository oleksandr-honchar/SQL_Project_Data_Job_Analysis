/*
 Question: What are the top-paying data analyst jobs?
 - Identify the top 10 highest-paying Data Analyst roles that are available remotely.
 - Focuses on job postings with specified salaries (remove nulls).
 - Why? Highlight the top=paying opportunities for Data Analysts, offering insights into empl...
 */
SELECT job_id,
    job_title,
    company_dim.name as company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM job_postings_fact
    left join company_dim on job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst'
    and salary_year_avg is NOT NULL
    and job_location = 'Poland'
order by salary_year_avg DESC
LIMIT 10;