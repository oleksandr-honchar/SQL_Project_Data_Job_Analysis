/*
 Question: What skills are required for the top-paying data analyst jobs?
 - Use the top 10 highest-paying Data Analyst jobs from first query
 - Add the specific skills required for these roles
 - Why? It provides a detailed look at which high-paying jobs demand certain skills,
 helping job seekers understand which skills to develop that align with top salaries
 */
with top_paying_jobs as (
    SELECT job_id,
        job_title,
        company_dim.name as company_name,
        salary_year_avg
    FROM job_postings_fact
        left join company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Data Analyst'
        and salary_year_avg is NOT NULL
        and job_location = 'Poland'
    order by salary_year_avg DESC
    LIMIT 10
)
select top_paying_jobs.*,
    skills
from top_paying_jobs
    inner join skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
    inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id;
/* SQL is the most in-demand skill for Data Analysts in Poland.
 Python and BigQuery are also highly sought-after, highlighting the importance of data manipulation and querying.
 Tableau appears frequently, indicating a strong demand for data visualization expertise.
 Other notable skills include Power BI, Excel, and Looker, showing a mix of both BI tools and traditional spreadsheet expertise. 
 
 [
 {
 "job_id": 367763,
 "job_title": "Data Analyst",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "sql"
 },
 {
 "job_id": 367763,
 "job_title": "Data Analyst",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "python"
 },
 {
 "job_id": 367763,
 "job_title": "Data Analyst",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "bigquery"
 },
 {
 "job_id": 367763,
 "job_title": "Data Analyst",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "tableau"
 },
 {
 "job_id": 369283,
 "job_title": "Data Analyst (Delivery Experience Technology & Product)",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "sql"
 },
 {
 "job_id": 369283,
 "job_title": "Data Analyst (Delivery Experience Technology & Product)",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "python"
 },
 {
 "job_id": 369283,
 "job_title": "Data Analyst (Delivery Experience Technology & Product)",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "gcp"
 },
 {
 "job_id": 369283,
 "job_title": "Data Analyst (Delivery Experience Technology & Product)",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "airflow"
 },
 {
 "job_id": 369283,
 "job_title": "Data Analyst (Delivery Experience Technology & Product)",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "windows"
 },
 {
 "job_id": 369283,
 "job_title": "Data Analyst (Delivery Experience Technology & Product)",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "tableau"
 },
 {
 "job_id": 369283,
 "job_title": "Data Analyst (Delivery Experience Technology & Product)",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "looker"
 },
 {
 "job_id": 876513,
 "job_title": "Data Analyst - Financial Services",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "sql"
 },
 {
 "job_id": 876513,
 "job_title": "Data Analyst - Financial Services",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "gcp"
 },
 {
 "job_id": 876513,
 "job_title": "Data Analyst - Financial Services",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "windows"
 },
 {
 "job_id": 876513,
 "job_title": "Data Analyst - Financial Services",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "tableau"
 },
 {
 "job_id": 876513,
 "job_title": "Data Analyst - Financial Services",
 "company_name": "Allegro",
 "salary_year_avg": "111175.0",
 "skills": "looker"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "sql"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "python"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "gcp"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "spark"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "pyspark"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "hadoop"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "scikit-learn"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "excel"
 },
 {
 "job_id": 1240464,
 "job_title": "Data Analyst",
 "company_name": "Capco",
 "salary_year_avg": "102500.0",
 "skills": "flow"
 },
 {
 "job_id": 1281562,
 "job_title": "Data Analyst (CX Tech)",
 "company_name": "Allegro",
 "salary_year_avg": "102500.0",
 "skills": "sql"
 },
 {
 "job_id": 1281562,
 "job_title": "Data Analyst (CX Tech)",
 "company_name": "Allegro",
 "salary_year_avg": "102500.0",
 "skills": "python"
 },
 {
 "job_id": 1281562,
 "job_title": "Data Analyst (CX Tech)",
 "company_name": "Allegro",
 "salary_year_avg": "102500.0",
 "skills": "windows"
 },
 {
 "job_id": 1281562,
 "job_title": "Data Analyst (CX Tech)",
 "company_name": "Allegro",
 "salary_year_avg": "102500.0",
 "skills": "tableau"
 },
 {
 "job_id": 1281562,
 "job_title": "Data Analyst (CX Tech)",
 "company_name": "Allegro",
 "salary_year_avg": "102500.0",
 "skills": "looker"
 },
 {
 "job_id": 1281562,
 "job_title": "Data Analyst (CX Tech)",
 "company_name": "Allegro",
 "salary_year_avg": "102500.0",
 "skills": "git"
 },
 {
 "job_id": 470832,
 "job_title": "SAP Finance Data Analyst",
 "company_name": "Westinghouse Electric Company",
 "salary_year_avg": "77017.5",
 "skills": "excel"
 },
 {
 "job_id": 470832,
 "job_title": "SAP Finance Data Analyst",
 "company_name": "Westinghouse Electric Company",
 "salary_year_avg": "77017.5",
 "skills": "sap"
 },
 {
 "job_id": 470832,
 "job_title": "SAP Finance Data Analyst",
 "company_name": "Westinghouse Electric Company",
 "salary_year_avg": "77017.5",
 "skills": "powerpoint"
 },
 {
 "job_id": 189127,
 "job_title": "Junior Data Analyst (Campaign Team)",
 "company_name": "Allegro",
 "salary_year_avg": "75067.5",
 "skills": "sql"
 },
 {
 "job_id": 189127,
 "job_title": "Junior Data Analyst (Campaign Team)",
 "company_name": "Allegro",
 "salary_year_avg": "75067.5",
 "skills": "gcp"
 },
 {
 "job_id": 189127,
 "job_title": "Junior Data Analyst (Campaign Team)",
 "company_name": "Allegro",
 "salary_year_avg": "75067.5",
 "skills": "looker"
 },
 {
 "job_id": 705215,
 "job_title": "Data Analyst (Pricing)",
 "company_name": "Allegro",
 "salary_year_avg": "57500.0",
 "skills": "sql"
 },
 {
 "job_id": 705215,
 "job_title": "Data Analyst (Pricing)",
 "company_name": "Allegro",
 "salary_year_avg": "57500.0",
 "skills": "gcp"
 },
 {
 "job_id": 282943,
 "job_title": "Junior Data Analyst - e-Xperience 2023",
 "company_name": "Allegro",
 "salary_year_avg": "53014.0",
 "skills": "sql"
 },
 {
 "job_id": 282943,
 "job_title": "Junior Data Analyst - e-Xperience 2023",
 "company_name": "Allegro",
 "salary_year_avg": "53014.0",
 "skills": "python"
 },
 {
 "job_id": 282943,
 "job_title": "Junior Data Analyst - e-Xperience 2023",
 "company_name": "Allegro",
 "salary_year_avg": "53014.0",
 "skills": "gcp"
 },
 {
 "job_id": 282943,
 "job_title": "Junior Data Analyst - e-Xperience 2023",
 "company_name": "Allegro",
 "salary_year_avg": "53014.0",
 "skills": "pyspark"
 },
 {
 "job_id": 67765,
 "job_title": "Junior/Mid/Senior Data Analyst (Pricing)",
 "company_name": "Allegro",
 "salary_year_avg": "53014.0",
 "skills": "sql"
 },
 {
 "job_id": 67765,
 "job_title": "Junior/Mid/Senior Data Analyst (Pricing)",
 "company_name": "Allegro",
 "salary_year_avg": "53014.0",
 "skills": "gcp"
 }
 ]
 
 */