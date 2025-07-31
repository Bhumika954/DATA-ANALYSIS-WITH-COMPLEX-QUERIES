-- Use the schema created for Task 2
USE task2_analysis;

-- Creating the Employees table to store basic employee details
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,        -- Unique ID for each employee
    Name VARCHAR(100),                 -- Employee's name
    Department VARCHAR(50)             -- Department they belong to (e.g., Sales, HR)
);

-- Creating the Sales table to store each sale made by employees
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,            -- Unique ID for each sale
    EmployeeID INT,                    -- ID of the employee who made the sale
    SaleAmount DECIMAL(10,2),          -- The amount of the sale
    SaleDate DATE,                     -- The date the sale was made
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)  -- Link to Employees table
);

-- Inserting sample employee data
INSERT INTO Employees VALUES
(1, 'Aarav', 'Marketing'),
(2, 'Bhavya', 'Sales'),
(3, 'Chirag', 'Sales'),
(4, 'Diya', 'HR');

-- Inserting sample sales records linked to employee IDs
INSERT INTO Sales VALUES
(101, 1, 5000.00, '2024-05-01'),
(102, 2, 7000.00, '2024-05-03'),
(103, 2, 8000.00, '2024-05-04'),
(104, 3, 3000.00, '2024-05-05'),
(105, 1, 4500.00, '2024-05-06'),
(106, 2, 2500.00, '2024-05-07'),
(107, 4, 2000.00, '2024-05-08');

-- Subquery: Find employees whose total sales are above the average sale amount
SELECT Name, Department
FROM Employees
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Sales
    GROUP BY EmployeeID
    HAVING SUM(SaleAmount) > (
        SELECT AVG(SaleAmount) FROM Sales
    )
);

-- CTE: Calculate total sales for each employee, then filter only 'Sales' department
WITH TotalSales AS (
    SELECT e.EmployeeID, e.Name, e.Department, SUM(s.SaleAmount) AS TotalSale
    FROM Employees e
    JOIN Sales s ON e.EmployeeID = s.EmployeeID
    GROUP BY e.EmployeeID
)
SELECT * FROM TotalSales WHERE Department = 'Sales';

-- Window Function: Rank each sale by amount from highest to lowest
SELECT e.Name, s.SaleAmount, s.SaleDate,
       RANK() OVER (ORDER BY s.SaleAmount DESC) AS SaleRank
FROM Sales s
JOIN Employees e ON s.EmployeeID = e.EmployeeID;
