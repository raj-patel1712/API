SELECT COUNT(DISTINCT job_id) AS num_jobs_available FROM employees;

SELECT SUM(salary) FROM employees;

SELECT MIN(salary) FROM employees;

SELECT MAX(salary) FROM employees WHERE JOB_ID='IT_Prog';

SELECT AVG(salary), COUNT(EMPLOYEE_ID) FROM employees WHERE DEPARTMENT_ID=90;

SELECT MAX(salary) , MIN(salary) , sum(salary) , AVG(salary)FROM employees;

SELECT COUNT(EMPLOYEE_ID) , JOB_ID FROM employees GROUP by JOB_ID;

SELECT MAX(salary) - MIN(salary) FROM employees;

SELECT MANAGER_ID, MIN(SALARY) FROM employees GROUP BY MANAGER_ID;

SELECT DEPARTMENT_ID, SUM(SALARY) FROM employees GROUP BY DEPARTMENT_ID;

SELECT JOB_ID, AVG(SALARY) FROM employees WHERE JOB_ID <> 'IT_PROG' GROUP BY JOB_ID;

SELECT JOB_ID, AVG(SALARY),SUM(SALARY) ,MIN(SALARY) ,MAX(SALARY) FROM employees WHERE DEPARTMENT_ID=90 GROUP BY JOB_ID;

SELECT JOB_ID , MAX(SALARY) AS MAXIMUM FROM employees GROUP BY JOB_ID HAVING MAXIMUM >=4000;

SELECT DEPARTMENT_ID AS DI , AVG(SALARY) AS AVERAGE FROM employees GROUP BY DI HAVING COUNT(EMPLOYEE_ID) >10;

SELECT locations.LOCATION_ID, locations.STREET_ADDRESS, locations.CITY, locations.STATE_PROVINCE, countries.COUNTRY_NAME FROM locations, countries;

SELECT e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_NAME FROM employees e INNER JOIN departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;

SELECT e.FIRST_NAME, e.LAST_NAME, e.job_id, e.DEPARTMENT_ID, d.department_name FROM employees e INNER JOIN departments d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID INNER JOIN locations l ON d.location_id = l.location_id WHERE l.city = 'London';

SELECT e1.EMPLOYEE_ID, e1.LAST_NAME, e1.MANAGER_ID, e2.LAST_NAME AS manager_LAST_NAME FROM employees e1 INNER JOIN employees e2 ON e1.MANAGER_ID = e2.EMPLOYEE_ID;

SELECT e1.FIRST_NAME, e1.LAST_NAME, e1.hire_date FROM employees e1 WHERE e1.hire_date > (SELECT e2.hire_date FROM employees e2 WHERE e2.LAST_NAME = 'Jones');

SELECT d.department_name, COUNT(e.EMPLOYEE_ID) as number_of_employees FROM departments d LEFT JOIN employees e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID GROUP BY d.DEPARTMENT_ID, d.department_name;

SELECT e.EMPLOYEE_ID, e.job_id, DATEDIFF(jh.end_date, jh.start_date) as job_duration_days FROM employees e INNER JOIN job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID WHERE e.DEPARTMENT_ID = 90;

SELECT d.DEPARTMENT_ID, d.department_name, e.FIRST_NAME AS manager_FIRST_NAME FROM departments d INNER JOIN employees e ON d.MANAGER_ID = e.EMPLOYEE_ID;

SELECT d.department_name, CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS manager_name, l.city FROM departments d INNER JOIN employees e ON d.MANAGER_ID = e.EMPLOYEE_ID INNER JOIN locations l ON d.location_id = l.location_id;

SELECT job_id, AVG(salary) as average_salary FROM employees GROUP BY job_id;

SELECT e.job_id, CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS employee_name, e.salary - j.min_salary as salary_difference FROM employees e INNER JOIN jobs j ON e.job_id = j.job_id;

SELECT jh.* FROM job_history jh INNER JOIN employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID WHERE e.salary > 10000;

SELECT d.department_name, CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS manager_name, e.hire_date, e.salary FROM departments d INNER JOIN employees e ON d.MANAGER_ID = e.EMPLOYEE_ID WHERE YEAR(CURDATE()) - YEAR(e.hire_date) > 15;



