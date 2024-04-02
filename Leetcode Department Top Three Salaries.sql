SELECT DISTINCT Department,Employee, Salary
FROM 
   (
        SELECT DISTINCT D.NAME AS Department, E.NAME AS Employee, E.Salary,
            DENSE_RANK ( ) OVER ( PARTITION BY D.NAME ORDER BY salary DESC ) AS salary_rank
        FROM EMPLOYEE E 
        LEFT JOIN Department D ON E.DepartmentID = D.ID
  )A
WHERE salary_rank <= 3