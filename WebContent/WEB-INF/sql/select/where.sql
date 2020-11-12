SELECT * FROM employee;
SELECT * FROM employee WHERE salary > 1500;

SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE ename = 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';

SELECT * FROM employee WHERE job = 'SALESMAN' AND salary = 1250;
SELECT * FROM employee WHERE hiredate >= '1981/05/01';