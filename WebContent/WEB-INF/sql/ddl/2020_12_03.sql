 -- update
 -- 데이터를 변경하는 명령문 
 -- UPDATE tname SET col1=val1, col2=var2..;
 
 SELECT * FROM dept_copy;
 
 UPDATE dept_copy
 SET dname = 'PROGRAMMING'
 where dno = 10;
 
 commit;
 rollback;
 
 UPDATE dept_copy
 SET dname = 'HR';
 
 UPDATE dept_copy
 SET dname='PROGRAMMING', loc='SEOUL'
 where dno=10;
 
 UPDATE dept_copy
 SET loc=(SELECT loc FROM dept_copy WHERE dno=20)
 WHERE dno=10;
 
 UPDATE dept_copy
 SET dname = (SELECT dname FROM dept_copy WHERE dno=30),
     loc = (SELECT loc FROM dept_copy WHERE dno=30)
 WHERE dno=10;
 
 ALTER TABLE emp_copy
 ADD (manager NUMBER(4), salary NUMBER(7,2), commission NUMBER(7,2));
 
 desc emp_copy;
 desc employee;
 SELECT * FROM emp_copy;
 
 INSERT INTO emp_copy(eno, ename, job, manager, hiredate,
                      salary, commission, dno) SELECT * FROM employee;
 
 UPDATE emp_copy
 SET dno=10
 WHERE eno=7788; 
 
 UPDATE emp_copy
 set (job, salary) = (SELECT job, salary FROM emp_copy WHERE eno=7499)
 WHERE eno=7788;
 
 SELECT * FROM emp_copy WHERE eno IN(7499, 7788);
 
 UPDATE emp_copy
 SET dno = (SELECT dno FROM emp_copy WHERE eno=7369)
 WHERE job = (SELECT job FROM emp_copy WHERE eno = 7369); 
 
 commit;
 rollback;
 
 SELECT * FROM emp_copy 
 WHERE dno = (SELECT dno FROM emp_copy WHERE eno=7369)
 and job = (SELECT job FROM emp_copy WHERE eno = 7369);
 
 DELETE FROM dept_copy
 WHERE dno=10;
 
 DROP TABLE dept_copy;
 
 CREATE TABLE dept_copy 
 AS
 SELECT * FROM department;
 SELECT * FROM dept_copy;
 
 DELETE FROM dept_copy
 WHERE dname='RESEARCH';

 DELETE FROM dept_copy WHERE dno IN(10, 40); 
 
 CREATE TABLE bank(
 name varchar2(25),
 money number
 );
 
INSERT INTO bank VALUES ('ironman', 500);
INSERT INTO bank VALUES ('captain', 700);

SELECT * FROM bank;
 
commit;

-- constraint
-- 제약사항 constraint 
-- not null : 컬럼의 값이 null은 안됨
-- unique : 유일한 값만 저장
-- check : 지정된 값(범위)만 가능
-- foreign key(외래키, 참조키)
--  : 다른 table에 있는 값만 가능
-- primary key (주요키, 키) ? 기본키
--  : not null + unique

--  not null
CREATE TABLE const01 (
    name VARCHAR2(30) NOT NULL,
    age NUMBER
);

INSERT INTO const01 VALUES('lulu', 20);
INSERT INTO const01 VALUES(NULL, 40); -- x
-- 빈 스트링도 null로 취급함!!

-- unique : 유일한 값만 같은 값 못들어감

CREATE TABLE const02(
  email VARCHAR2(30) UNIQUE,
  name VARCHAR2(30)
);

INSERT INTO const02 VALUES ('a', 'b');
INSERT INTO const02 (email, name) 
VALUES ('a', 'dd');

-- null은 중복해서 들어갈 수 있다.

INSERT INTO const02 (name) VALUES ('c'); 
SELECT * FROM const02;

-- check
CREATE TABLE const03(
  name VARCHAR2(30),
  age NUMBER CHECK (age > 0)
);

INSERT INTO const03 (name, age) VALUES ('a', 30);
INSERT INTO const03 (name, age) VALUES ('b', 0);
INSERT INTO const03 (name, age) SELECT 'c', 20 FROM dual union all
SELECT '3', 2 FROM dual;
SELECT * FROM const03;

-- 제약사항 여러 개 사용 가능
CREATE TABLE const04(
  email VARCHAR2(30) NOT NULL UNIQUE CHECK(email LIKE '%@%'),
  name VARCHAR2(30)
);

INSERT INTO const04 (email, name)
VALUES (null, 'a');
INSERT INTO const04 (email, name)
VALUES ('a', 'b');
INSERT INTO const04 (email, name)
VALUES ('a@d', 'a');
INSERT INTO const04 (email, name)
VALUES ('a@d', 'd');
commit;

-- KEY
-- : 각 레코드(row)를 유일하게 구분할 수 있는 칼럼(들)

-- PRIMARY KEY
-- 각 레코들 유일하게 구분하는 컬럼
-- 유의할 점 : 변하지 않는 값
--   --> 키 컬럼을 새로 만들기
--       자동으로 늘어나는 정수
-- : NOT NULL, UNIQUE   
CREATE TABLE const05 (
   email VARCHAR(30),
   name VARCHAR(30),
   ssn VARCHAR(30),
   address VARCHAR(30),
   birth DATE
);

SELECT * FROM const05;

CREATE TABLE const06 (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(30)
);
INSERT INTO const06 (id, name)
VALUES (1, 'a');
INSERT INTO const06 (id, name)
VALUES (null, 'b');
INSERT INTO const06 (id, name)
VALUES (1, 'c');
INSERT INTO const06 (id, name)
VALUES (2, 'c');

SELECT * FROM const06;

commit;

-- foreign key
CREATE TABLE cons07_emp
AS
SELECT * FROM employee;

CREATE TABLE const07_dep
AS SELECT * FROM department;

SELECT eno, ename, dno FROM cons07_emp;
SELECT * FROM const07_dep;
INSERT INTO cons07_emp (eno, ename, dno) VALUES (8787, 'ABC', 50);

commit;

desc department;
CREATE TABLE const08_dep (
  DNO NUMBER(2) PRIMARY KEY,
  DNAME VARCHAR2(14),
  LOC VARCHAR2(13)
);

INSERT INTO const08_dep SELECT * FROM department;
SELECT * FROM const08_dep;

DROP TABLE const08_emp;
CREATE TABLE const08_emp(
  name VARCHAR(30),
  dno NUMBER(2) REFERENCES const08_dep(dno)
);

INSERT INTO const08_emp (name, dno) VALUES ('b', 50);
SELECT * FROM const08_emp;

-- PRIMARY KEY
CREATE TABLE const09 (
  id NUMBER,
  name VARCHAR2(30),
  PRIMARY KEY(id)
);

INSERT INTO const09 (id, name)
VALUES (null, 'a');
INSERT INTO const09 (id, name)
VALUES (1, 'a');
commit;
SELECT * FROM const09;

-- FOREIGN KEY
CREATE TABLE const10(
  name VARCHAR2(30),
  dno NUMBER(2),
  FOREIGN KEY (dno) REFERENCES const08_dep(dno)
);

INSERT INTO const10 VALUES ('a', 10);
INSERT INTO const10 VALUES ('b', 50);
SELECT * FROM const10;
commit;

CREATE TABLE const11(
  id NUMBER,
  name VARCHAR(30),
  dno NUMBER(2),
  PRIMARY KEY (id),
  FOREIGN KEY (dno) REFERENCES const08_dep
);





 
 