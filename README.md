
# README #

### What is this repository for? ###

This repository contains SQL queries to answer five specific questions outlined in the assignment brief.

### The environment: MariaDB on Codio ###

This assignment was completed via the MariaDB system on Codio, as per its instructions. Two tables (`EMP` and `DEPT`), which contain employees- and departments-related information, were used from the database `COMPANY1` that was provided for this assessment.

Queries were created by experimenting on the terminal, which was opened from the **Tools->Terminal** menu.

The MariaDB client was leveraged by typing `mariadb` on the terminal, as shown in the screenshot below.

![Using MariaDB](docs/1_Using_MariaDB.png)

The server's version of MariaDB is provided in the screenshot below.

![Server version of MariaDB](docs/2_Server_version_of_MariaDB.png)

The `mysql` client is enabled by typing it on the terminal further to using MariaDB, which has all database and table editing and reading privileges for experimenting with and creating the required queries to answer the five questions in this assignment.

The 'COMPANY1' database can be thus used via the command below.

```sql
USE COMPANY1;
```

The description and rationale of the code implementation is documented in comments provided above each SQL query in the file named `assessment_1_part_3.sql`. These implementations were mainly based on own hands-on SQL skills and further guided by the knowledge gathered from the works of Kriegel (2011), Myalapalli & Shiva (2015), Guagliardo & Libkin (2016), and the best practices they shared. 

Evidence that the five required queries ran successfully is provided under the section `'Evidence of successful runs for required queries'` below.

### Evidence of successful runs for required queries ###

The above-mentioned SQL script (`assessment_1_part_3.sql`) can be run as per the screenshot below, which executes all five required queries to answer the five questions in this assignment. The five questions considered are available in the comments at the .sql file mentioned above, which also contains comments that explain the SQL query derived as a solution to each of the five questions posed. 

![Running SQL script](docs/3_Running_sql_script.png)

Evidence that the custom database `COMPANY1` was used is provided in the screenshot below.

![Using custom DB](docs/4_Using_custom_database.png)

Evidence that the first query ran successfully and of its result is illustrated on the following screenshot.

![Result from first query](docs/5_Result_from_first_query.png)

Two interpretations of the answer to the second question, as explained in the comments in 
the code 'assessment_1_part_3.sql', led to two versions of the second query, as shown below.

Evidence that the second query based on the first interpretation (two separate counts) was 
executed successfully and of its outcome is shown on the screenshot below.

![Result from second query, first interpretation (two separate counts)](docs/6_Result_from_second_query_first_interpretation.png)

Evidence that the second query based on the second interpretation (one count only) was executed successfully 
and of its outcome is shown on the screenshot below.

![Result from second query, second interpretation (one count only)](docs/6_Result_from_second_query_second_interpretation.png)

Evidence that the third query ran successfully and of its output is reported on the following screenshot.

![Result from third query](docs/7_Result_from_third_query.png)

Evidence that the fourth query was executed successfully and of its result is illustrated on the following screenshot.

![Result from fourth query](docs/8_Result_from_fourth_query.png)

Evidence that the fifth query ran successfully and of its outcome is shown on the following screenshot.

![Result from fifth query](docs/9_Result_from_fifth_query.png)

### References ###

- Guagliardo, P. and Libkin, L. (2016) Making SQL queries correct on incomplete databases: A feasibility study. In Proceedings of the 35th ACM SIGMOD-SIGACT-SIGAI Symposium on Principles of Database Systems. 211-223.

- Kriegel, A. (2011) Discovering SQL: a hands-on guide for beginners. John Wiley & Sons.

- Myalapalli, V.K. and Shiva, M.B. (2015) An appraisal to optimize SQL queries. In 2015 International Conference on Pervasive Computing (ICPC). IEEE. 1-6.
