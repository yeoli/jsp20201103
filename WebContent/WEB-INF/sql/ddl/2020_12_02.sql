-- create

CREATE TABLE table1(
 col1 NUMBER(3), -- 수 3의 길이고 소수 밑 1
 col2 VARCHAR2(6), -- 가변길이 최대 6개의 바이트 
 col3 CHAR(4), -- 4개의 문자(4바이트)
 col4 DATE -- 날짜시간
);    

SELECT * FROM table1; 
DESC table1; -- table1의 정보 조회

RENAME table1 TO dept;

ALTER TABLE dept modify (dname varchar2(14), loc varchar2(13));
ALTER TABLE dept modify dno number(3,1);
ALTER TABLE dept modify dno number(4,2);
INSERT INTO dept (dno) VALUES (2.56);
SELECT * FROM dept;

--ORA-01440: 정도 또는 자리수를 축소할 열은 비어 있어야 합니다

DESC dept;
DESC dept20;
-- NUMBER(값)
-- ex)값이 3이면 1000이상 표시 못함
-- NUMBER(값1, 값2)
-- ex)값1은 총길이, 값2는 소수점 밑의 길이
--    NUMBER(3, 2) : 10이상 표시 못함

-- 문자열
-- VARCHAR2(값)
-- 값 : byte수

-- CREATE TABLE new_table AS SELECT * FROM old_table;

CREATE table dept20 
AS SELECT eno, ename, salary*12 annsal 
FROM employee WHERE dno=20;
 
ALTER TABLE dept20 ADD (birth date);

-- where 0=1 붙이면 데이터 말고 구조만 복사 가능

-- 컬럼 삭제
-- ALTER TABLE tname DROP COLUMN col_name;
ALTER TABLE dept20
DROP COLUMN ename;

CREATE TABLE dept_second AS SELECT * FROM dept20 WHERE 0=1;
DESC dept_second;
SELECT * FROM dept_SECOND;
INSERT INTO dept_second (eno) VALUES (3113);
TRUNCATE TABLE dept_second;

-- 혼자해보기

-- 1
CREATE TABLE DEPT2(
  dno number(2),
  dname varchar2(14),
  loc varchar2(13)
);

CREATE TABLE EMP(
  eno number(4),
  ename varchar2(10),
  dno number(2)
);

ALTER TABLE emp modify ename varchar2(25);
desc emp;

CREATE TABLE employee2 (emp_id, name, sal, dept_id)
AS 
SELECT eno, ename, salary, dno FROM employee;
desc employee2;

DROP TABLE emp;

RENAME employee2 TO emp;
desc emp;

ALTER TABLE dept2
DROP column dname;
desc dept2;

ALTER TABLE dept2 ADD loc varchar2(13);

ALTER TABLE dept2
set unused (loc);

ALTER TABLE dept2
drop UNUSED columns;

DROP Table dept_second;

----INSERT
--INSERT INTO tname (col1, col2) values (val1, val2);

CREATE TABLE dept_copy 
AS
SELECT * FROM department WHERE 0=1;

DESC dept_copy;
SELECT * FROM dept_copy;

INSERT INTO dept_copy VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept_copy (dno, loc, dname) VALUES (10, 'DALLAS', 'RESEARCH');

INSERT INTO dept_copy (dno, dname) VALUES (30, 'SALES');
INSERT INTO dept_copy (dno, dname, loc) VALUES (30, 'OPERATIONS', null);
COMMIT;

-- 

CREATE TABLE data_type_ex1 (
  num1 NUMBER,
  num2 NUMBER(2),
  num3 NUMBER(3, 2)
);

INSERT INTO data_type_ex1 (num1) VALUES (0);
INSERT INTO data_type_ex1 (num1) VALUES (0.01);
INSERT INTO data_type_ex1 (num1) VALUES (99999999999);
INSERT INTO data_type_ex1 (num3) VALUES (9.015);
INSERT INTO data_type_ex1 (num3) VALUES (10.015);
SELECT * FROM data_type_ex1;

-- 문자열
CREATE TABLE data_type_ex2 (
  char1 CHAR(3),
  vchar2 VARCHAR2(6)
);

INSERT INTO data_type_ex2
(char1) VALUES ('');
INSERT INTO data_type_ex2
(char1) VALUES ('a');
SELECT * FROM data_type_ex2;

INSERT INTO data_type_ex2
(vchar2) VALUES ('한');

INSERT INTO data_type_ex2
(vchar2) VALUES ('한글');
-- 한글은 한 자에 3바이트씩

commit;
ROLLBACK;

CREATE TABLE data_type_ex3 (
  date1 DATE
);

SELECT sysdate FROM DUAL;
INSERT INTO data_type_ex3
VALUES (sysdate);
INSERT INTO data_type_ex3
VALUES ('2020/11/01');
INSERT INTO data_type_ex3
VALUES (TO_DATE('2020-10-10', 'YYYY-MM-DD'));
SELECT * FROM data_type_ex3;
SELECT TO_CHAR(date1, 'YYYY-MM-DD HH24:MI:SS')
FROM data_type_ex3;
INSERT INTO data_type_ex3
VALUES (TO_DATE(sysdate, 'YYYY-MM-DD HH24:MI:SS'));

-- char은 a__ 빈공간 스페이스로 채우지만 vchar은 빈공간 안채움

CREATE TABLE emp_copy
AS
SELECT eno, ename, job, hiredate, dno
FROM employee
WHERE 0=1;

INSERT INTO emp_copy
VALUES (7000, 'CANDY', 'MANAGER', '2012/01/03', 10);

-- oraclecloud : VALUES (7000, 'CANDY', 'MANAGER', TO_DATE('2012/01/03', 'YYYY/MM/DD'), 10);







