SELECT * FROM employee;
SELECT * FROM employee WHERE salary > 1500;

SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE ename = 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';

SELECT * FROM employee WHERE job = 'SALESMAN' AND salary = 1250;
SELECT * FROM employee WHERE hiredate >= '1981/05/01';

SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' AND manager = 7698;
SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 2000;

SELECT * FROM employee
WHERE NOT salary < 3000;

SELECT * FROM employee
WHERE ename < 'K' AND salary > 2000 AND dno <> 30;

SELECT * FROM employee
WHERE ename like 'F___';
SELECT * FROM employee
WHERE ename like 'F%';
SELECT * FROM employee
WHERE ename like 'W%D';

SELECT ename, salary, salary * 12 + 100 FROM employee
ORDER BY salary * 12 + 100 DESC;

SELECT ename, salary From employee WHERE salary > 2000
ORDER BY salary DESC;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 or salary > 5000;

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE dno IN (10, 20);

SELECT * FROM employee 
WHERE dno NOT IN (20);

SELECT * FROM employee 
WHERE dno <> 20;

SELECT ename, job, hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

SELECT ename, dno FROM employee
WHERE dno IN(20, 30) ORDER BY ename;

SELECT ename, salary, dno FROM employee
WHERE salary BETWEEN 2000 AND 3000 AND dno IN(20, 30) ORDER BY ename;

SELECT ename, hiredate FROM employee
WHERE hiredate LIKE '81%';

SELECT ename, job FROM employee
WHERE manager is null;

SELECT ename, salary, commission FROM employee
WHERE commission IS NOT NULL ORDER BY salary, commission;

SELECT ename FROM employee WHERE ename LIKE '__R%';

SELECT ename FROM employee WHERE ename LIKE '%A%' AND ename LIKE '%E%';

SELECT ename, job, salary FROM employee 
WHERE (job ='CLERK' or job = 'SALESMAN') AND salary NOT IN(1600, 950, 1300);

SELECT ename, salary, commission FROM employee
WHERE commission >= 500;

SELECT ename, UPPER(ename), initcap(ename) FROM employee;

SELECT ename FROM employee WHERE eno = 7499;

SELECT * FROM department;

SELECT * FROM SALGRADE;




