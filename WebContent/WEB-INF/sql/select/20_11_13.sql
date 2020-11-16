SELECT * FROM employee WHERE ename LIKE '%D';
SELECT * FROM employee WHERE ename LIKE '%D%';

SELECT * FROM employee WHERE ename LIKE '_A%';
SELECT * FROM employee WHERE ename LIKE '_A__';
SELECT sum(salary) FROM employee;

SELECT count(commission) FROM employee WHERE commission is null;
SELECT * FROM employee;
SELECT count(*) FROM employee WHERE commission IS NULL;

SELECT * FROM employee
WHERE salary>2000 ORDER BY hiredate;

SELECT * FROM employee
ORDER BY eno DESC;

SELECT * FROM employee
ORDER BY ename, dno;

SELECT ename, salary, salary*12+100 AS go FROM employee ORDER BY go DESC;

SELECT ename, salary FROM employee WHERE salary>2000 ORDER BY salary DESC;

SELECT ename, dno FROM employee WHERE eno=7788;

SELECT ename, salary FROM employee WHERE salary NOT BETWEEN 2000 AND 3000;

SELECT ename, job, hiredate FROM employee WHERE hiredate BETWEEN '81/02/20' AND '81/05/01';

SELECT ename, dno FROM employee WHERE dno IN(20, 30) ORDER BY ename DESC;

DESCRIBE employee;

SELECT * FROM employee WHERE eno=7499;

-- chap 4 function

SELECT SYSDATE FROM dual;

SELECT LOWER(ename) AS ename FROM employee;
SELECT UPPER(ename) AS name FROM employee;
SELECT INITCAP(ename) AS name FROM employee;
SELECT INITCAP('oracle maniD') AS name FROM dual;

SELECT 'Oravle mania', UPPER('Oracle mania'), LOWER('Oracle mania'), INITCAP('Oracle mania') FROM dual;

SELECT ename, LOWER(ename), job, INITCAP(job) FROM employee;

SELECT eno, ename, dno FROM employee WHERE LOWER(ename)='scott';
SELECT eno, ename, dno FROM employee WHERE INITCAP(ename)='Scott';

SELECT * FROM employee WHERE LOWER(ename) like '%a%';

SELECT ename, LENGTH(ename) "length dd" FROM employee;
SELECT LENGTH('웨프로그래밍') FROM dual;

SELECT LENGTHB('웨프로그래밍') FROM dual;

SELECT ename, LENGTHB(ename) len FROM employee;

SELECT LENGTH('OracleMania'), LENGTH('오라클매니아') from dual;
SELECT LENGTHB('OracleMania'), LENGTHB('오라클매니아') FROM dual;

SELECT CONCAT(ename, manager) FROM employee;
SELECT ename || job FROM employee;
SELECT ename || ', ' || job FROM employee;

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;

--date caution

SELECT * FROM employee WHERE SUBSTR(TO_CHAR(hiredate, 'YYYY-mm-dd'), 1, 4) = '1987';

SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT ename, INSTR(ename, 'T', 2, 2) FROM employee;
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual; --문자열 2부터 2번째 T

--이름의 세번째 자리가 R인 사원
SELECT * FROM employee WHERE ename LIKE '__R%';
SELECT * FROM employee WHERE INSTR(ename, 'R') = 3;

SELECT ename, LPAD(ename, 10, '#') FROM employee;
SELECT ename, RPAD(ename, 10, '*') FROM employee;

SELECT 'Oracle mania', TRIM('a' FROM 'Oracle mania') FROM dual;
SELECT RTRIM('  ABC  ') FROM dual;
SELECT LTRIM('  ABC  ') FROM dual;
SELECT TRIM('  ABC  ') FROM dual;

SELECT ROUND(345.1456) FROM dual;
SELECT ROUND(345.1456, 0) FROM dual;
SELECT ROUND(345.1456, 1) FROM dual;
SELECT ROUND(345.1456, 2) FROM dual;
SELECT ROUND(345.1456, 3) FROM dual;
SELECT ROUND(345.1456, -1) FROM dual;
SELECT ROUND(345.1456, -2) FROM dual;

SELECT TRUNC(345.1456) FROM dual;
SELECT TRUNC(345.1456, 0) FROM dual;
SELECT TRUNC(345.1456, 1) FROM dual;
SELECT TRUNC(345.1456, 2) FROM dual;

SELECT MOD(135, 3) FROM dual;
SELECT MOD(135, 2) FROM dual;

SELECT ename, salary, MOD(salary, 500) FROM employee;

--무조건 올림하는 
SELECT CEIL(345.1456) FROM dual;

--절대값
SELECT ABS(-15) FROM dual;
--제곱
SELECT POWER(3, 3) FROM dual;
SELECT SQRT(62) FROM dual;

SELECT sysdate FROM dual;
SELECT sysdate + 1 FROM dual;
SELECT sysdate - 1 FROM dual;

SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;
SELECT TRUNC(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(MONTHS_BETWEEN(sysdate, hiredate)) FROM employee;
SELECT MONTHS_BETWEEN(sysdate, TO_DATE('2019-10-13', 'yyyy-mm-dd')) FROM dual;
SELECT abs(MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yyyy-mm-dd'), sysdate)) FROM dual;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;

SELECT NEXT_DAY(sysdate, '토요일') FROM dual;
SELECT NEXT_DAY(sysdate, '금요일') FROM dual;
SELECT NEXT_DAY(sysdate, 5) FROM dual; --일요일이 1부터

SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;

--- 형 변환 함수
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'yyyy') FROM dual;
SELECT TO_CHAR(sysdate, 'YY') FROM dual;
SELECT TO_CHAR(sysdate, 'mm') FROM dual;
SELECT TO_CHAR(sysdate, 'dd') FROM dual;
SELECT TO_CHAR(sysdate, 'Mon') FROM dual;
SELECT TO_CHAR(sysdate, 'yyyy-mm-dd') FROM dual;

SELECT TO_CHAR(sysdate, 'hh') FROM dual;
SELECT TO_CHAR(sysdate, 'hh24') FROM dual;
SELECT TO_CHAR(sysdate, 'mi') FROM dual;
SELECT TO_CHAR(sysdate, 'ss') FROM dual;
SELECT TO_CHAR(sysdate, 'hh:mi:ss') FROM dual;

SELECT TO_CHAR(sysdate, 'yyyy-mm-dd-day hh-mi-ss') FROM dual;

--number to char
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(45678956789, '9,999,999,9999') FROM dual;
SELECT TO_CHAR(45678956789, '000,000,999,9999') FROM dual;

SELECT TO_CHAR(45678956789, 'l9,999,999,9999') FROM dual;

--char to date
SELECT TO_DATE('2020-11-13', 'yyyy-mm-dd') FROM dual;
SELECT TO_DATE('20201114', 'yyyymmdd') FROM dual;
SELECT TO_CHAR(TO_DATE('2020-11-14 01:30:20', 'yyyy-mm-dd hh:mi:ss'), 'YYYY-mm-dd hh:mi:ss') FROM dual;

SELECT TO_NUMBER('2000000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;

SELECT SUBSTR(hiredate, 1, 2), SUBSTR(hiredate, 4,2) FROM employee;

SELECT TO_NUMBER('50,000', '99,999') FROM dual;


