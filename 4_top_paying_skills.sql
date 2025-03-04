select skills,
    round(avg(salary_year_avg), 0) as avg_salary
from job_postings_fact
    inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_title_short = 'Data Analyst'
    and job_country = 'Poland'
    And salary_year_avg is not null
group by skills
order by 2 desc
LIMIT 25;
-- 💰 Insights on Top-Paying Skills in Poland
-- 🔥 High-Paying Skills Overview
--     Top salaries: Linux, AWS, Mongo lead with 165,000 PLN/year
--     Big Data & Cloud Dominate: Hadoop, NoSQL, Snowflake, and BigQuery are highly valued
--     BI & Data Tools Strong: Qlik, Tableau, Looker, SAS, Airflow among top earners
-- 📊 Key Trends
-- 1️⃣ Cloud & DevOps Dominate ☁️
--     AWS (165K), Azure (108.7K), Linux (165K) → Strong demand for cloud expertise
--     Jira (111K), Git (97.9K) → DevOps & Agile tools are lucrative
-- 2️⃣ Big Data & Databases Pay Well 📊
--     MongoDB (165K), Hadoop (133.7K), NoSQL (131.7K) → Companies value scalable data systems
--     Snowflake, BigQuery (111K each) → Cloud data warehouses are rising
-- 3️⃣ Data Science & Analytics Are Profitable 📈
--     Scikit-learn (102.5K), Matplotlib (98.5K) → ML & visualization skills have strong earning potential
--     SQL (91.4K), Python (94.2K) → Essential but lower than specialized cloud/data tools
-- 4️⃣ Programming Language Trends 💻
--     Rust & C++ (98.5K each) → High demand for performance-critical apps
--     Python (94.2K) → Popular, but not the highest-paying
--     SQL (91.4K) → Still fundamental but earns less than niche data tech
-- 📢 Takeaways
-- ✅ Focus on Cloud + Big Data (AWS, Mongo, Snowflake) for top earnings
-- ✅ Master BI & Analytics (Tableau, Looker, Qlik) for solid paychecks
-- ✅ Combine Python with ML & Data Engineering skills for better salaries
-- ✅ Invest in Cloud/DevOps skills (Linux, Git, Jira) for high job security
-- 🚀 Want a raise? Get certified in AWS, MongoDB, or Big Data tools!