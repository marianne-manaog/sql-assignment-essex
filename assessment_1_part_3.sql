mysql;
USE COMPANY1;

/* Question 1: Show employee name, department, and salary of all employees 
whose salary is between 1,000 and 2,000. 

Comment on answer to question 1: A 'SELECT' statement was written with a 
'WHERE' clause applying the required filter on the salary band sought after 
to show the employee's name, department number, and salary. 
To return the department name as well for this output to be more understandable 
and user-friendly, a 'JOIN' was applied to link table 1 ('EMP') and table 
2 ('DEPT') by their common column ('DEPTNO') and show the department name from 
table 2 ('DEPT') too.

The answer to question 1 is provided in a one-line SQL query below for ease 
of execution/testing via the terminal leveraging MariaDB.
*/
SELECT TABLE1.ENAME AS employee_name, TABLE1.DEPTNO AS department_number, TABLE2.DNAME as department_name, TABLE1.SAL AS salary FROM EMP TABLE1 JOIN DEPT TABLE2 ON TABLE1.DEPTNO=TABLE2.DEPTNO WHERE TABLE1.SAL BETWEEN 1000 AND 2000;

/* Question 2: Count the number of people in department 30 who receive 
a salary and that of those people receiving a commission. 
Note on question 2: this question was initially interpreted as having to return 
two separate counts (one for the people in department 30 receiving a salary, 
and the other one for those receiving a commission); nevertheless, the tutor 
highlighted that this question requires an 'OR' statement, i.e., only one count 
should be returned with the number of people receiving either a salary or a 
commission altogether. Thus, two queries have been added in the answer below to satisfy 
both these interpretations of this question. 

Comment on answer to question 2 based on the first interpretation above (two 
separate counts): A 'SELECT' statement with a 'WHERE' clause 
to filter employees on the chosen department (30) was written, counting the 
number of employees with a positive (>0) salary and the number of employees with 
a positive (>0) commission as two separate counts by summing up (+1 via 'SUM') 
the employees if ('IF') they received a positive salary or a positive commission 
respectively (adding 0 (not adding anything) otherwise, i.e., not incrementing 
their count otherwise).

Comment on answer to question 2 based on the second interpretation above (one count 
only): A 'SELECT' statement with a 'WHERE' clause to filter employees on the 
chosen department (30) was written, counting the number of employees with 
either a positive (>0) salary or a positive (>0) commission (via the 'OR' statement) 
in one count by summing up (+1 via 'SUM') the employees if ('IF') they received 
either a positive salary or a positive commission (adding 0 (not adding anything) 
otherwise, i.e., not incrementing their count otherwise).

The answer to question 2 is thus provided based on both the above-mentioned 
interpretations in a one-line SQL query for each interpretation below for ease of 
execution/testing via the terminal leveraging MariaDB.
*/

/*
The answer to question 2 based on the first interpretation above (two separate counts).
*/
SELECT SUM(IF(SAL > 0, 1, 0)) AS num_people_w_positive_salary, SUM(IF(COMM > 0, 1, 0)) AS num_people_w_positive_commission FROM EMP WHERE DEPTNO = 30;

/*
The answer to question 2 based on the second interpretation above (one count only).
*/
SELECT SUM(IF(SAL > 0 OR COMM > 0, 1, 0)) AS num_people_w_positive_salary_or_commission FROM EMP WHERE DEPTNO = 30;

/* Question 3: Find the name and salary of employees in Dallas. 

Comment on answer to question 3: A 'SELECT' statement with a 'JOIN' between 
table 1 (EMP) and table 2 (DEPT) was written to be able to access the location 
'LOC' in table 2 ('DEPT') to identify relevant employees in Dallas in table 1 
('EMP') by leveraging a common column in both tables ('DEPTNO') to link the 
relevant information in the two tables ('LOC' from 'DEPT' table, 'ENAME' and 
'SAL' from 'EMP' table).

The answer to question 3 is provided in a one-line SQL query below for ease of 
execution/testing via the terminal leveraging MariaDB.
*/
SELECT ENAME AS employee_name_from_Dallas, SAL AS salary FROM EMP TABLE1 JOIN DEPT TABLE2 ON TABLE1.DEPTNO=TABLE2.DEPTNO WHERE LOC='DALLAS';

/* Question 4: List all departments that do not have any employees. 

Comment on answer to question 4: A 'SELECT' statement with a 'LEFT JOIN' 
between table 1 ('DEPT') and table 2 ('EMP') was written to be able to access 
all department numbers ('DEPTNO' column) in table 1 ('DEPT') and identify 
relevant departments not having any employees based on the employee's 
information in table 2 ('EMP') by leveraging a common column in both tables 
('DEPTNO').

The answer to question 4 is provided in a one-line SQL query below for ease 
of execution/testing via the terminal leveraging MariaDB.
*/
SELECT TABLE1.DEPTNO AS dept_num_wo_employees, TABLE1.DNAME AS dept_name_wo_employees FROM DEPT TABLE1 LEFT JOIN EMP TABLE2 ON TABLE1.DEPTNO = TABLE2.DEPTNO WHERE ISNULL(TABLE2.EMPNO);

/* Question 5: List the department number and average salary of each 
department.

Comment on answer to question 5: A 'SELECT' statement with a 'RIGHT JOIN' 
between table 1 ('EMP') and table 2 ('DEPT') was written to be able to access 
all department numbers ('DEPTNO' column) in table 2 ('DEPT') to then compute 
the average salary for each department based on the salary provided in table 
1 ('EMP') grouping by a common column in both tables ('DEPTNO').

The answer to question 5 is provided in a one-line SQL query below for ease of 
execution/testing via the terminal leveraging MariaDB.
*/
SELECT TABLE2.DEPTNO AS department_number, AVG(SAL) AS average_salary FROM EMP TABLE1 RIGHT JOIN DEPT TABLE2 ON TABLE1.DEPTNO=TABLE2.DEPTNO GROUP BY TABLE2.DEPTNO;
