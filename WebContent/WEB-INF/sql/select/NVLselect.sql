SELECT * FROM employee;
SELECT * FROM bonus;
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT ENAME FROM employee;
SELECT ENO, ENAME, SALARY FROM employee;
SELECT ENAME, SALARY FROM employee;
SELECT SALARY*12 FROM employee;
SELECT ENAME, SALARY / 100 FROM employee;
SELECT ENAME, SALARY + 100 FROM employee;
SELECT ENAME, SALARY - 100 FROM employee;

SELECT ENAME, SALARY, SALARY*12 AS ���� FROM employee;
SELECT ENAME, SALARY, SALARY*12 ���� FROM employee;
-- �� �� �ּ�
/* 
  ���� �� �ּ�
*/
SELECT * FROM employee;
SELECT ENAME, SALARY, COMMISSION, SALARY + COMMISSION FROM employee;
SELECT ENAME, SALARY, COMMISSION, SALARY + NVL(COMMISSION, 0) AS ��� FROM employee;

