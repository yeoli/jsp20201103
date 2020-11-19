SELECT * FROM department;
SELECT * FROM employee;
SELECT * FROM salgrade;

-- joinEx7

SELECT e.eno, e.ename, e.hiredate, e.salary, d.dname, e.job, s.grade, DECODE(ma.ename, null, e.ename, ma.ename) 
FROM employee e, employee ma, department d, salgrade s
WHERE e.dno = d.dno AND e.eno = 7698
AND e.salary BETWEEN s.losal AND s.hisal
AND e.manager = ma.eno(+);

-- sub쿼리
SELECT manager FROM employee WHERE eno = 7499;
SELECT ename FROM employee WHERE eno = 7698;

SELECT ename FROM employee 
WHERE eno = (SELECT manager 
             FROM employee 
             WHERE eno = 7499);
             
SELECT ename, dno FROM employee 
WHERE dno = (SELECT dno 
             FROM employee 
             WHERE ename = 'SCOTT');
             
SELECT ename, job, salary FROM employee 
WHERE salary = (SELECT min(salary)
                FROM employee);
                
SELECT dno, min(salary) FROM employee 
GROUP BY dno HAVING min(salary) > (select min(salary) FROM employee WHERE dno = 30);

SELECT ename FROM employee 
WHERE salary > (SELECT salary
                FROM employee
                WHERE eno = 7499);
                
-- 다중 행 서브 쿼리
/*
IN        값이 하나라도 있으면
ANY(SOME) 하나 이상이 만족하면
ALL       모두 만족하면
*/

SELECT dno 
FROM department
WHERE dno <= 20;

SELECT ename, dno FROM employee
WHERE dno IN(SELECT dno 
             FROM department
             WHERE dno <= 20);
             
SELECT eno, ename FROM employee 
WHERE (dno, salary) in (SELECT dno, min(salary)
                        FROM employee
                        group by dno);
                        
-- do it myself
SELECT ename, job FROM employee 
WHERE job = (SELECT job FROM employee WHERE eno = 7788);

SELECT ename job FROM employee 
WHERE salary > (SELECT salary FROM employee WHERE eno = 7499);
 
SELECT ename, job, salary FROM employee
WHERE salary = (SELECT MIN(salary) FROM employee);

SELECT job, AVG(salary) FROM employee GROUP BY job
HAVING AVG(salary) = (SELECT MIN(AVG(salary)) FROM employee GROUP BY job);

SELECT AVG(salary) FROM employee GROUP BY job HAVING avg(salary) = 1037.5;

-- p154

SELECT MAX(salary), MIN(salary), SUM(salary), ROUND(avg(salary)) FROM employee;
SELECT job, MAX(salary), MIN(salary), SUM(salary), ROUND(AVG(salary)) 
FROM employee GROUP BY job;
SELECT job, count(*) FROM employee GROUP BY job;
SELECT e.ename, e.dno, d.dname 
FROM employee e, department d
WHERE e.dno = d.dno AND e.ename = 'SCOTT';
SELECT ename, dname, loc 
FROM employee e JOIN department d
on e.dno = d.dno;
SELECT dno, job, loc FROM employee INNER JOIN department
USING(dno) WHERE dno = 10;