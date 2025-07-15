# Business-Operations-Data-Analysis-Using-SQL
•Analyzed business operations data to uncover insights on performance, sales, inventory, and revenue. Utilized advanced SQL features like CTEs, views, indexes, and stored procedures.

SQL Project : Synergizing Success - Improving Operational
Efficiency and Employee Engagement


Problem Statement:

Enhancing Operational Efficiency and Growth Strategies in a Multi-Departmental
Business


Project Overview

This project focused on analyzing a company's business
operations dataset to extract actionable insights related to
employee performance, product sales, customer satisfaction, and
supply chain efficiency. SQL was used extensively to process and
evaluate various operational dimensions.
Context
Business operations involve complex dynamics between employees, products,
suppliers, and departments. Continuous analysis is vital for aligning workforce
performance with strategic goals, maintaining customer satisfaction, and
preventing supply chain disruptions.
Problem Statement
The organization faced several operational inefficiencies:
Employee Performance & Retention Challenges: Fluctuating performance
levels and high turnover prompted analysis of training effectiveness,
compensation, and tenure on performance.
Product Sales & Customer Satisfaction: Discrepancies were observed where
certain products had high sales but low feedback, raising concerns about
quality or customer support.
Supply Chain & Inventory Gaps: Inadequate inventory for some products
posed supply risks and potential lost sales, while supplier performance and
inventory balance required assessment.

SQL Techniques Used

Aggregations & Grouping
Window Functions
Common Table Expressions (CTEs)
Views & Indexes
Stored Procedures
User-Defined Functions (UDFs


Key Insights & Results

Highest Profit Margin Department: HR department had the highest
average profit margin (~17.64%).
Top IT Performer: The top-performing employee in the IT department
was identified with the highest performance score.
Top Revenue Product in HR: The most revenue-generating product in
HR was highlighted.
Accessories Feedback Score: All products in the Accessories category
had an average feedback score of 5.
Supplier Inventory: Supplier B had the highest total inventory level.
Lowest Gadget Inventory: Charger had the lowest inventory level in
the Gadgets category.
Sales Training Completion: 495 Sales employees completed training,
representing a 49.25% completion rate.
Marketing Units Sold: Marketing department sold 1010 units in total;
“Charger” contributed the most.
Revenue Ranking by Employee: Employees ranked by revenue using
SQL RANK() window function.
High Salary Departments: All departments had average salaries
above $70,000.
View Created: For Accessories product revenue and margins using
CREATE VIEW.
Index on Employee Name: Created a non-clustered index on
employee_name to improve performance.
Stored Procedure: Developed a stored procedure to calculate
department-level revenue dynamically.
Scalar UDF: Created a function to calculate profit from revenue and
profit margin.
Clustered Index: Created a clustered index on company_id.


Conclusion

This project highlighted critical inefficiencies in operations using
SQL-driven analysis. The business can now:
Improve training and retention strategies
Address customer satisfaction issues
Balance inventory to avoid lost sales
This comprehensive SQL analysis supports better decision-making
across departments and aligns with long-term strategic goals.



Problems:
● The company is experiencing several operational inefficiencies:
● Employee Performance & Retention Challenges: Inconsistent employee
performance and high turnover rates negatively impact productivity. The
company needs to evaluate whether training programs, salary, and tenure
influence employee retention and performance.
● Product Sales & Customer Satisfaction Issues: Some products have low
customer feedback scores despite high sales, indicating potential quality or
support issues. Additionally, low sales for certain products may suggest
gaps in marketing strategies or misalignment with market demands.
● Supply Chain & Inventory Management Issues: Supply chain risks are
posed by low inventory levels approaching reorder points, potentially
leading to missed sales opportunities if not addressed promptly.
● Technology Usage & Future Planning Concerns: The company is
underutilizing technology in several departments, leading to
inefficiencies. Weak market research and unclear company
direction could affect long-term growth and competitiveness.
DataSet :
● https://drive.google.com/file/d/
1LcbxWSQrTjYbEyJuFqLf487_fYZR9 Osm/view?
usp=sharing
Analysis Questions:
● Employee Performance:
● Which department had the highest average profit margin among its
products?
● Which employee in the IT department had the highest performance
score, and what was their role?
● Product Sales & Customer Satisfaction:
● Identify the product with the highest revenue generated in
the HR department.
● What is the average customer feedback score for products
in the Accessories category, and which product received the
highest score?
● Supply Chain & Inventory Management:
● Which supplier had the highest total inventory level
across all departments?
● Which product in the Gadgets category had the lowest inventory level?
● Employee Training & Sales:
● How many employees in the Sales department have completed
training programs, and what percentage does this represent of the
total employees in that department?
Product Sales Contribution
● What is the total number of units sold for all products in the
Marketing department, and which product contributed the most to
this total?
Advanced SQL Questions
● Write a query to rank employees in each department by their
revenue generated using a window function.
● Create a CTE to find the average salary of employees in each
department and then select departments where the average salary
is above $70,000.
● Create a view that shows only the product name, revenue, and
profit margin for products in the Accessories category.
● Write a query to create a non-clustered index on the
employee_name column to improve query performance.
● Create a stored procedure that accepts a department name
as a parameter and returns the total revenue generated by that
department.
● Create a scalar UDF that calculates the profit from a given
product's revenue and profit margin.
● Provide a query to create a clustered index on the company_id column.

