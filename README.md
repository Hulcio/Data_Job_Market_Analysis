# Data Job Market in 2023 Analysis: Salaries, Skills, and Trends

## Introduction

#### My project focuses on analyzing salaries, required skills and benefits. ####

**I focused on answering the following questions:**

1.  What are the best paid positions in data industry and which companies offer the most remote jobs and highest salary ?

2.  Do remote work opportunities, benefits like insurance, and the lack of degree requirements affect salaries?

3. What are the most financially rewarding and most frequently required skills for DATA ANALYST?

4.  When is the best time to search for data-related jobs?


## Tools I Used

**SQL:** The core language used to analyze the dataset. It enabled me to extract, filter, and aggregate data efficiently to uncover actionable insights.

**PostgreSQL:** Database management system used to store and manage the dataset.

**Visual Studio Code:** My development environment for writing and executing SQL queries, as well as managing database connections through integrated extensions.

**Git & GitHub:** Used for version control and collaboration. I tracked changes in my scripts and shared my project repository.

**EXCEL:** Utilized to visualize the results of my SQL queries, enabling clear and concise data presentation through charts.

## Building tables and copying data from .CSV files

*Building tables* : [Building tables](creating_tables/1_building_tables.sql)

*Copying Data* : [Copying Data](creating_tables/2_copying_data_from_csv.sql)


## The Analysis

* ###  What are the best paid positions in data industry and which companies offer the most remote opportunities and highest salaries

**SQL QUERY** : [SQL QUERY](SQL_queries/sql_query_1.sql)

**Visualization and Key Findings :**

![Top 10 Highest paying jobs](/charts/SQL_1_chart.png)

*Senior Data Scientist and Senior Data Engineer roles offer the highest average salaries, both approaching $160,000 USD annually. More technical roles like Machine Learning Engineer and Software Engineer also maintain strong pay levels, while Data Analyst and Business Analyst positions sit at the lower end of the top 10.*


![Highest paying companies and number of current job postings](/charts/SQL_2_chart.png)

*Algo Capital Group stands out as the best-paying company, offering average salaries over $300,000 USD, while companies like Roblox and Gloocomms combine attractive pay with a high number of open positions. Other companies, such as NVIDIA and Grammarly, offer slightly lower salaries but maintain a consistent number of job openings.*


![Numbers of total remote job postings](/charts/SQL_3_chart.png)

*Lionstep, Data Universe, and Uplers lead the remote job market, each listing the highest numbers of remote offers. The number of remote opportunities drops significantly among other companies, showing a concentration of remote-friendly roles within a few key players.*

**Insights:**

*The data shows that specialization and seniority in data roles are directly tied to higher salaries, especially in leadership and technical engineering positions. Top-paying companies tend to balance high salaries with selective hiring, while the remote job market is dominated by recruitment platforms and outsourcing firms, indicating that remote opportunities are abundant but concentrated in specific channels rather than evenly spread across all employers.*

* ###  Do the remote work opportunities, benefits like insurance, and the lack of degree requirements affect salaries?

**SQL QUERY** : [SQL QUERY](SQL_queries/sql_query_2.sql)

**Visualization and Key Findings :**

![Numbers of total remote job postings](/charts/SQL_4_chart.png)

*Remote data roles tend to offer higher salaries compared to their stationary counterparts across almost all positions. Notably, roles like Senior Data Scientist, Senior Data Engineer, and Cloud Engineer show a significant salary boost when offered remotely. More junior roles, such as Data Analyst and Business Analyst, display smaller differences between remote and in-office pay.*

![Numbers of total remote job postings](/charts/SQL_5_chart.png)


*Jobs that offer insurance benefits consistently show the highest average salaries across all roles, with Cloud Engineer and Machine Learning Engineer roles leading this trend. Interestingly, roles that do not require a degree still offer competitive salaries, particularly in engineering and data science fields, suggesting that practical skills can outweigh formal education in salary potential.*

**Insights:**

*The data highlights that remote work opportunities in the data industry are not only more flexible but also generally better compensated, especially in senior and technical roles. Additionally, benefits packages like insurance play a significant role in driving up salary offers, making them a key factor in job attractiveness. Finally, the fact that many high-paying roles are accessible without formal degrees underscores the industry's shift towards valuing skills and experience over traditional education.*


* ###  What are the most financially rewarding and most frequently required skills for DATA ANALYST ?

**SQL QUERY** : [SQL QUERY](SQL_queries/sql_query_3.sql)

**Visualization and Key Findings :**

![Numbers of total remote job postings](/charts/SQL_6_chart.png)

*The most frequently listed skills for data analysts are SQL, Python, and Power BI, with SQL clearly dominating the market. These core technologies enable data processing, analysis, and reporting*

![Numbers of total remote job postings](/charts/SQL_7_chart.png)
 
 *Skills such as Kafka, Perl, and Cassandra are associated with the highest average salaries, despite being less commonly listed in job ads. This indicates that niche or specialized technologies command a premium, likely due to a lower supply of qualified professionals.*

**Insights**

*The data suggests a clear divide between skill popularity and earning potential. Widely used tools like SQL and Python are essential but do not guarantee the highest salaries. Conversely, less common but technically complex tools like Kafka and Perl tend to offer higher compensation, likely because they are harder to master and in lower supply. This trend highlights an opportunity for professionals to increase their earning power by developing rare or advanced technical skills that are in lower demand but highly valued.*


* ###  When is the best time to search for data-related jobs?

**SQL QUERY** : [SQL QUERY](SQL_queries/sql_query_4.sql)

**Visualization and Key Findings :**
![Number of total remote job postings](/charts/SQL_8_chart.png)
 
*The data shows that January has the highest number of data-related job postings, followed by August and October. In contrast, May consistently has the lowest volume of postings, with noticeable dips also in June and December. These patterns suggest strong seasonal trends in hiring activity.*


**Insights** 

*The job market for data roles appears to be most active at the beginning of the year and again after the summer break, likely due to fresh budgets, new projects, or hiring cycles that align with business planning. Job seekers aiming to maximize their opportunities should target their applications in January or late summer/early fall, while avoiding less active months like May or December, when hiring tends to slow down.*



## Conclusions

*The analysis of the 2023 data job market reveals strong correlations between technical specialization, remote flexibility, and compensation. Seniority and rare technical skills yield the highest salaries, while benefits such as insurance further elevate job value. Remote work continues to be a significant driver of compensation, especially in more experienced roles.*

*From a skills standpoint, foundational tools like SQL and Python remain essential, but niche tools like Kafka or Cassandra provide a strategic advantage for maximizing salary. Furthermore, the job market exhibits clear seasonal patterns — January, August, and October emerge as the best months to actively pursue opportunities.*


# Closing Thoughts

### *This analysis provides a comprehensive and practical view of the 2023 data job market, offering valuable takeaways for anyone navigating a career in data.* ###

### Timing matters:
The best time to search for data-related jobs is in January, with a second surge in late summer and early fall. Targeting these peak periods can significantly increase job search success.

### Build the basics:
 Foundational skills like SQL, Python, and Power BI are essential and commonly required across most roles. However, professionals looking to boost their salaries should consider learning niche or advanced tools such as Kafka, Cassandra, or Perl — which, while less frequently requested, command higher compensation.

### Benefits and flexibility drive value:
 Jobs that offer insurance benefits and remote work options tend to offer notably higher salaries, especially in senior or technical roles. These factors are increasingly shaping candidate preferences and employer competitiveness.

### *Overall, the data industry continues to reward specialization, adaptability, and timing. By combining in-demand core competencies with rare skills and targeting high-value opportunities, professionals can strategically position themselves for long-term success and higher earning potential.*
