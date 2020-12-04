 -- NOT NUL
 -- CHECK
 -- UNIQUE
 -- FOREIGN KEY
 -- PRIMARY KEY
 
 SELECT * FROM user_constraints;
 
 -- 책 (252 쪽)
 CREATE TABLE customer (
   id VARCHAR2(20) CONSTRAINT customer_id_uk UNIQUE,
   pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
   name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
   phone VARCHAR2(30),
   address VARCHAR2(100)
 );
 
 SELECT * FROM user_constraints
 WHERE constraint_name LIKE 'CUS%';
 
 UPDATE user_constraints 
 SET constraint_name = 'CUSOMER_PWD_NN' 
 WHERE constraint_name = 'CUSOMER_PWD_NN';
 
 drop table customer;
 
CREATE TABLE customer (
   id VARCHAR2(20),
   pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn NOT NULL,
   name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL,
   phone VARCHAR2(30),
   address VARCHAR2(100),
   CONSTRAINT customer_id_pk PRIMARY KEY(id)
 );
 
 SELECT * FROM user_constraints
 WHERE constraint_name LIKE 'CUSTOMER%';
 
 -- 제약 사항 추가
 drop table emp_copy;
 CREATE TABLE emp_copy
 AS
 SELECT * FROM employee;

SELECT * FROM emp_copy;

SELECT * FROM user_constraints
WHERE table_name = 'EMPLOYEE';

SELECT * FROM user_constraints
WHERE table_name = 'EMP_COPY';

-- 제약사항은 복사되지 않음!!!

ALTER TABLE emp_copy ADD PRIMARY KEY (eno);

drop table dept_copy;
drop table emp_copy;

CREATE TABLE dept_copy
AS
SELECT * FROM department;

-- 제약사항 이름 정해주고 기본키 설정
ALTER TABLE dept_copy
ADD CONSTRAINT dept_copy_dno_pk PRIMARY KEY(dno);

SELECT * FROM user_constraints
WHERE table_name = 'DEPT_COPY';

-- 259쪽
ALTER TABLE emp_copy 
ADD CONSTRAINT emp_copy_eno_pk PRIMARY KEY(eno);

ALTER TABLE emp_copy
ADD CONSTRAINT emp_copy_dno_fk FOREIGN KEY(dno) 
REFERENCES dept_copy(dno);

ALTER TABLE emp_copy 
ADD CONSTRAINT emp_copy_ename_nn NOT NULL;

-- 260쪽
ALTER TABLE emp_copy
MODIFY ename CONSTRAINT emp_copy_ename_nn UNIQUE;

ALTER TABLE emp_copy
MODIFY emp_copy_ename_nn UNIQUE;

-- 제약사항 삭제
ALTER TABLE emp_copy
DROP CONSTRAINT emp_copy_ename_nn;

SELECT * FROM user_constraints
WHERE table_name = 'EMP_COPY';

ALTER TABLE dept_copy
DROP PRIMARY KEY CASCADE;

SELECT * FROM emp_copy;

-- 기본값 갖기
CREATE TABLE const12 (
  id NUMBER DEFAULT 9,
  name VARCHAR2(30)
);

INSERT INTO const12 (id, name) VALUES (3, 'jao');
INSERT INTO const12 (name) VALUES ('dd');
INSERT INTO const12 VALUES ('','ddf');
SELECT * FROM const12;

SELECT * FROM user_constraints
WHERE table_name = 'CONST12';

-- default 값 확인하고 싶으면
SELECT * FROM USER_TAB_COLUMNS
WHERE table_name='CONST12';

-- sequence
CREATE TABLE post (
  title VARCHAR2(255),
  body VARCHAR2(255)
);

INSERT INTO post (title, body)
VALUES ('abc', 'def');
SELECT * FROM post;

SELECT * FROM post;

DELETE post WHERE title='abc';

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

INSERT INTO post (id, title, body)
VALUES(1, 'abc', 'def');
INSERT INTO post (id, title, body)
VALUES(2, 'abc', 'def');

DELETE FROM post WHERE id=1;

-- 
SELECT max(id) FROM post;
INSERT INTO post(id, title, body)
VALUES (3, 'abc', 'def');

-- 시퀀스 만들기
CREATE SEQUENCE my_seq;

DELETE POST;

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval, 'abc', 'def');

-- 시퀀스가 100부터 시작!
CREATE SEQUENCE my_seq2
START WITH 100;

CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100;

INSERT INTO post (id, title, body)
VALUES (my_seq3.nextval, 'add', 'hgr');

-- 305 혼자해보기
CREATE sequence emp_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 100000;

CREATE TABLE emp01(
  empno NUMBER(4) primary key,
  ename VARCHAR(10),
  hiredate date
);

INSERT INTO emp01
VALUES(emp_seq.NEXTVAL, 'julia', sysdate);

SELECT * FROM emp01;

-- 시퀀스 확인
SELECT * FROM user_sequences;
SELECT my_seq2.currval FROM dual;

-- 시퀀스 삭제
DROP SEQUENCE my_seq2;

-- 시퀀스 수정
ALTER SEQUENCE my_seq3
INCREMENT BY 1000;
SELECT my_seq3.currval FROM dual;
SELECT my_seq3.nextval FROM dual;

-- 자동 증가 컬럼
CREATE table t1(
  id NUMBER GENERATED ALWAYS as IDENTITY(START WITH 10 INCREMENT by 2),
  name VARCHAR2(30)
);

INSERT INTO t1 (name) VALUES('dd');
SELECT * FROM t1;


-- 방명록 예제 테이블
DROP TABLE post;
CREATE TABLE post(
  id NUMBER GENERATED AS IDENTITY,
  title VARCHAR2(255),
  body VARCHAR2(4000),
  PRIMARY KEY(id)
);

SELECT * FROM post;

SELECT id, title FROM post ORDER BY id;





 
 
 
 