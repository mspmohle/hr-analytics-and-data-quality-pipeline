-- Headcount by department

SELECT department, COUNT(*) AS employee_count
FROM hr_cleaned
GROUP BY department
ORDER BY employee_count DESC;


-- Average salary by department

SELECT department, ROUND(AVG(salary_usd), 2) AS avg_salary
FROM hr_cleaned
GROUP BY department
ORDER BY avg_salary DESC;


-- Attrition rate by department

SELECT department,
       SUM(CASE WHEN attrition_flag = 'Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS attrition_rate
FROM hr_cleaned
GROUP BY department
ORDER BY attrition_rate DESC;

