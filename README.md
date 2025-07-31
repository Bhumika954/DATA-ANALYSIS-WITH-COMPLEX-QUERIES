# DATA-ANALYSIS-WITH-COMPLEX-QUERIES

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: BHUMIKA S

*INTERN ID*: CT04DF1481

*DOMAIN*: SQL

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTOSH

##
This task was about using advanced SQL concepts to analyze a dataset involving employees and their sales. I used three powerful SQL features: subqueries, common table expressions (CTEs), and window functions. These are typically used when you want to analyze trends, performance, rankings, or aggregated patterns rather than just fetching raw data.

Instead of just listing information from the tables, I was expected to write queries that actually show insight such as who is doing well, which department is contributing the most, and which transactions were most significant. It helped me understand how SQL is used in real reporting and business analysis.

Tools I Used

MySQL Workbench – for creating tables and running queries
MySQL Server – for hosting the database
GitHub – to store and share all deliverables

Tables I Created

I worked with two tables: Employees and Sales.

The Employees table includes employee ID, name, and department. This tells us who works where.
The Sales table contains the sale ID, employee ID (which connects it to the Employees table), the sale amount, and the sale date. This helps us track each sale made by each person.

Queries I Wrote

Subquery: I used a subquery to first find the average sale amount, and then filtered employees whose total sales were higher than that average. This helped me identify high performers.

CTE: I used a CTE to calculate the total sales done by each employee, then filtered only the Sales department. This gave a clear view of how Sales employees are performing compared to each other.

Window Function: I used the RANK function to rank all sales based on their amount, from highest to lowest. This showed who made the biggest individual sales, not just who had the highest total.

Trends and Patterns Observed

Bhavya, who is in Sales, was the top performer in all types of queries.
Chirag, also in Sales, had much lower total sales, showing a performance gap in the team.
Diya from HR had only one small sale, indicating she likely doesn't handle sales as part of her main job.

Ranking the transactions helped me clearly see top performers and also pointed out employees who may need support or training.

Where This Task Can Be Applied

This kind of analysis is used all the time in real-world jobs. Here are some practical applications:

In sales departments, to track which employees are exceeding targets

In HR, to identify top performers or those who need help

In business reporting, for preparing monthly or quarterly performance reviews

In dashboards that show rankings and department-level contributions

For data-driven decisions like promotions, bonus distribution, or training planning

These SQL techniques are commonly used in roles such as business analysts, data analysts, HR analysts, and operations teams.

Files I Included

task2_analysis.sql – My queries with explanations
task2_outputs.txt – Notes about the query results
Task2_SQL_Trends_Report.docx – A detailed report on the findings
README.md – This file, summarizing the whole task

What I Learned

This task taught me how to use SQL for actual data analysis, not just data retrieval. I understood how to think in terms of questions and patterns, and then translate that thinking into SQL code. Subqueries helped me compare, CTEs made my queries cleaner, and window functions helped with ranking.

I also learned how these SQL concepts are used in real companies to make better decisions. This task gave me confidence in writing SQL that’s not just functional but also meaningful.

#OUTPUT

![Image](https://github.com/user-attachments/assets/f65c13a3-d5fa-4154-be8e-46a052850f42)

![Image](https://github.com/user-attachments/assets/b1d33f19-6788-4da3-82a5-808cc40fdce1)

![Image](https://github.com/user-attachments/assets/03207f79-c368-4321-99e4-e0486b605b11)


