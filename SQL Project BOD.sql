
--1

SELECT TOP 1
	department,
	AVG (profit_margin) as Avg_Profit_Margin
from bod
GROUP BY department
ORDER  BY Avg_Profit_Margin DESC

-- The HR department had the highest average profit margin among its products, with an average profit margin of approximately 17.64%. 

-- 2 

SELECT TOP 1
	 employee_name, 
	 SUM (employee_performance_score) as TotalScore,
	 department, 
	 employee_role
from bod
GROUP BY employee_name, department, employee_role
HAVING department = 'IT'
ORDER BY TotalScore DESC

--3

SELECT 
	department,
	product_name,
	SUM(revenue) Total_Revenue
from bod
GROUP BY product_name, department
HAVING department = 'HR'
ORDER BY Total_Revenue DESC

-- 4

-- a. Average feedback score

SELECT 
	category, 
	product_name,
    AVG(customer_feedback_score) AS avg_feedback_score
FROM bod
WHERE category = 'Accessories'
GROUP BY product_name, category;

-- All products have the same avg feedback score of 5 

--5. 

select 
	supplier_name, 
	SUM(inventory_level) TotalInv
from bod
group by supplier_name
order by TotalInv

-- Supplier B has the max inventory 

--6. 

SELECT 
	category, 
	product_name,
	SUM(inventory_level) TotalInventory
from bod
where category ='Gadgets'
group by product_name, category
order by TotalInventory

-- Charger has the lowest inventroy

--7

SELECT 
    category, 
    product_name,
    SUM(inventory_level) AS TotalInventory
FROM bod
WHERE category = 'Gadgets'
GROUP BY product_name, category
ORDER BY TotalInventory;

-- Charger has the lowest inventory

--8

SELECT  
   	COUNT (training_program_completed)
FROM bod
WHERE department = 'SALES' AND training_program_completed = '1'

-- Total and percentage
SELECT 
    CAST(SUM(CASE WHEN training_program_completed = 1 THEN 1 ELSE 0 END) AS FLOAT) 
    / COUNT(*) * 100 AS training_percent
FROM bod
WHERE department = 'Sales'

--495 employees completed training out of 1005 total employees with a 49.25% completion rate

--9

SELECT 
	count(units_sold)
from bod
where department = 'Marketing'

--1010 total units sold from marketing dept. 

SELECT TOP 1
	department,
	product_name,
	SUM (units_sold) unitsperproduct
from bod
where department = 'Marketing'
group by product_name, department
order by unitsperproduct DESC

-- The product 'chanrger' has contributed the most to the list.

--10

SELECT 
    employee_name,
    department,
    revenue,
    RANK() OVER (PARTITION BY department ORDER BY revenue DESC) AS revenue_rank
FROM bod
GROUP BY employee_name

--11 


WITH AvgSalary_per_dept AS
(
SELECT 
    department,
	AVG(salary) as AVGSalary   
FROM bod
GROUP BY department
)
SELECT 
    department,
	AVGSalary
FROM AvgSalary_per_dept
WHERE AVGSalary > 70000

-- As we see all the departments have an average salary greater than 70K.

--12

CREATE VIEW vw_Accessories_Profit AS
SELECT 
    product_name,
    revenue,
    profit_margin
FROM bod
WHERE category = 'Accessories'

SELECT * FROM vw_Accessories_Profit;

--13

CREATE NONCLUSTERED INDEX idx_employee_name
ON bod (employee_name)


--14

CREATE PROCEDURE sp_GetDepartmentRevenue
    @DeptName VARCHAR(100)
AS
BEGIN
	SELECT 
		department, 
		SUM(revenue) as revenue_generated
	from bod
	where department = @DeptName
	group by department
END

Exec sp_GetDepartmentRevenue @Deptname = 'Sales'

--15

--  Scalar UDF to Calculate profit from revenue and profit margin

CREATE FUNCTION dbo.fn_CalculateProfit (
    @Revenue FLOAT,
    @ProfitMargin FLOAT
)
RETURNS FLOAT
AS
BEGIN
    RETURN @Revenue * @ProfitMargin / 100;
END;

SELECT 
    product_name,
    revenue,
    profit_margin,
    dbo.fn_CalculateProfit(revenue, profit_margin) AS profit
FROM bod

--16 
-- Creating a clustered index on the id column 
CREATE CLUSTERED INDEX idx_company_id
ON bod (company_id)
