CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE offset_val INT;
  SET offset_val = N - 1;

  RETURN (
    SELECT IF(((SELECT COUNT(DISTINCT salary) FROM Employee) >= N),
      (SELECT salary
       FROM (SELECT DISTINCT salary 
             FROM Employee 
             ORDER BY salary DESC) AS c1
       LIMIT 1 OFFSET offset_val),
      NULL)
  );
END;
-- kaushik bhadra 23bai70483