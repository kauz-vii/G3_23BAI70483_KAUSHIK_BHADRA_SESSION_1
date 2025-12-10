-- homework
-- kaushik bhadra 23bai70483
CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    salary NUMERIC(10, 2)
);

INSERT INTO Employee (name, salary) VALUES
('Kaushik', 62000.00),
('Ashish', 58000.00);

CREATE VIEW Employee_View AS
SELECT * FROM Employee;

CREATE ROLE Analyst;
GRANT SELECT ON Employee_View TO Analyst;