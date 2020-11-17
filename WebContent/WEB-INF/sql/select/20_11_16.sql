 SELECT * FROM employee;
 SELECT ename, salary, commission, salary + NVL(commission, 0) as sum FROM employee;
 
 SELECT ename, salary, commission, 
        NVL(commission, 0), salary * 12 + NVL(commission, 0) 
        FROM employee 
        ORDER BY job;
        
SELECT ename, commission, NVL2(commission, commission, 0) FROM employee;

SELECT ename, salary, commission, NVL2(commission, salary*12+commission, salary*12) 
FROM employee
ORDER BY job;

SELECT COALESCE('a', 'b', null, 'c') FROM dual;
SELECT COALESCE(null, 'b', null, 'c') FROM dual;
SELECT COALESCE(null, null, 'd', 'c') FROM dual;

SELECT ename, salary, commission, COALESCE(commission, salary, 0) FROM employee ORDER BY job;

SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF') FROM employee;
SELECT ename, dno, DECODE(dno, 10, 'ACCOUNTING', 
                          20, 'RESEARCH', 30, 'SALES', 
                          40, 'OPRERATIONS', 'DEFAULT') AS DNAME 
FROM employee 
ORDER BY dno;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                           WHEN salary >= 0 THEN 'LOW'
                           ELSE '0'
                      END AS DNAME
FROM employee
ORDER BY dno;

SELECT SUBSTR(hiredate, 1, 2), SUBSTR(hiredate, 4, 2) FROM employee;
SELECT * FROM employee WHERE SUBSTR(hiredate, 4, 2) = 4;
SELECT * FROM employee WHERE MOD(eno, 2) = 0;
SELECT hiredate, TO_CHAR(hiredate, 'yy/mon/dy') FROM employee;
SELECT TRUNC(sysdate - TO_DATE('2011/01/01', 'yyyy/mm/dd')) FROM dual;
SELECT eno, ename, NVL2(manager, manager, 0) FROM employee;
SELECT DECODE(job, 'analyst', salary + 200, 'salesman', salary+180,
              'manager', salary+180, 'clerk', salary+100, salary) FROM employee;
              
SELECT ename, salary*12+NVL(commission, 0) FROM employee;

SELECT commission, nvl(commission, 0) FROM employee;

--------section 1 count
SELECT SUM(salary) FROM employee;
SELECT AVG(salary) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;
SELECT COUNT(*) FROM employee;

SELECT SUM(salary) as "급여총액",
       AVG(salary) as "급여평균",
       MAX(salary) as "최대급여",
       MIN(salary) as "최소급여"
FROM employee;

SELECT MAX(hiredate), MIN(hiredate) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT COUNT(commission) FROM employee;

SELECT distinct job FROM employee ORDER BY job;
SELECT count(distinct job) FROM employee;

SELECT ename FROM Employee 
WHERE salary = (SELECT MAX(salary) FROM employee);

----------section 2 group by

SELECT * FROM employee;
SELECT MAX(salary) FROM employee;
SELECT job, MAX(salary) FROM employee
GROUP BY job;

SELECT dno, avg(salary) FROM employee
GROUP BY dno;

SELECT dno, avg(salary) FROM employee GROUP BY dno;

SELECT dno, job, count(*), sum(salary) FROM employee
GROUP BY dno, job 
ORDER BY dno, job;

SELECT max(salary), min(salary), avg(salary), sum(salary) FROM employee WHERE job = 'CLERK';

SELECT job, avg(salary) FROM employee
WHERE job = 'CLERK'
GROUP BY job;

-- 그룹 함수는 WHERE에서 불가
SELECT job, avg(salary) FROM employee
WHERE avg(salary) >= 3000
GROUP BY job;

SELECT job, avg(salary) FROM employee
GROUP BY job
HAVING avg(salary) >= 3000;

SELECT dno, max(salary) FROM employee
GROUP BY dno
HAVING max(salary) >= 3000;

SELECT max(avg(salary)) FROM employee GROUP BY dno;

SELECT MAX(salary), MIN(salary), sum(salary), round(avg(salary)) FROM employee;
SELECT job, MAX(salary), MIN(salary), SUM(salary), round(AVG(salary)) 
FROM employee
GROUP BY job;
SELECT job, count(*) FROM employee GROUP BY job;
SELECT count(manager) FROM employee;
SELECT max(salary)-min(salary) DIFFERENCE FROM employee;

SELECT job, MIN(salary) 
FROM employee
WHERE manager is not null -- 여기 주의
GROUP BY job
HAVING NOT MIN(salary) < 2000
ORDER BY MIN(salary) desc;

SELECT * FROM employee;

SELECT dno, count(*), round(avg(salary), 2) FROM employee
GROUP BY dno ORDER BY dno asc;

SELECT DECODE(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS') AS "DNAME",
       DECODE(dno, 10, 'NEW YORK',
                   20, 'DALLAS',
                   30, 'CHICAGO',
                   40, 'BOSTON') AS "location",
       count(*), round(avg(salary)) FROM employee
GROUP BY dno;

SELECT * FROM department;

SELECT job, dno, 
       DECODE(dno, 10, sum(salary), 0) "부서 10",
       DECODE(dno, 20, sum(salary), 0) "부서 20",  DECODE(dno, 30, sum(salary), 0) "부서 30", SUM(salary) 
FROM employee GROUP BY job, dno ORDER BY dno;

