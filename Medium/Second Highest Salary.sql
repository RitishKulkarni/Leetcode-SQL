SELECT DISTINCT (
    SELECT MAX(salary) 
     FROM Employee 
     WHERE salary < (SELECT MAX(salary) FROM Employee)
    ) AS SecondHighestSalary FROM Employee