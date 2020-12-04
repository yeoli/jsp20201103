-- 14����, 8����
SELECT * FROM employee;
-- 4����, 3����
SELECT * FROM department;
SELECT * FROM salgrade;

SELECT * FROM employee, department;

SELECT eno, ename, dname FROM employee, department;
SELECT eno, ename, employee.dno edno, dname FROM employee, department;

SELECT eno, ename, employee.dno edno, department.dno ddno, dname 
FROM employee, department
WHERE eno = 7369 AND employee.dno = department.dno;

SELECT * FROM employee, department WHERE employee.dno = department.dno;
SELECT eno, ename, dname FROM employee, department 
WHERE employee.dno = department.dno AND eno = 7788;

SELECT * FROM employee department 
WHERE employee.dno = department.dno 
AND eno = 7369;

SELECT * FROM employee e, department d WHERE e.dno = d.dno
AND e.eno = 7369;

SELECT e.eno, e.ename, e.dno, d.dname
FROM employee e, department d
WHERE e.dno = d.dno;

SELECT eno, ename, department.dname, employee.dno FROM employee, department
WHERE employee.dno = department.dno
AND employee.eno = 7788;

-- join keyword
SELECT * FROM employee natural join department WHERE eno = 7782;
SELECT eno, ename, dname, dno FROM employee natural join department WHERE eno = 7788;

-- join using
SELECT * FROM employee JOIN department USING(dno);
SELECT * FROM employee JOIN department USING(dno) WHERE eno = 7788;

-- join on
SELECT * FROM employee e JOIN department d ON e.dno = d.dno;

SELECT eno, ename, dname, dno FROM employee join department using(dno) WHERE eno=7788;
SELECT e.eno, e.ename, d.dname, d.dno FROM employee e join department d on d.dno = e.dno;

SELECT e.ename, e.dno, d.dname FROM employee e, department d WHERE e.dno = d.dno AND ename = 'SCOTT';
SELECT ename, dname, loc FROM employee NATURAL JOIN department WHERE commission > 0;

SELECT e.ename, d.dname FROM employee e, department d WHERE e.dno = d.dno AND e.ename LIKE '%A%';

--

SELECT * FROM employee;
SELECT * FROM salgrade;

SELECT * FROM employee e, salgrade s --14*5=70 ���� 
WHERE e.salary BETWEEN s.losal AND s.hisal;

SELECT e.eno, e.ename, d.dname, e.salary, s.grade 
FROM employee e, department d, salgrade s 
WHERE e.dno = d.dno AND e.salary BETWEEN losal and hisal;

SELECT e.salary, s.grade FROM employee e, salgrade s WHERE e.eno=7369 AND e.salary BETWEEN losal and hisal;


SELECT e.ename FROM employee e, salgrade s WHERE s.grade = 4 AND e.salary BETWEEN s.losal and s.hisal;

-- self join

SELECT * FROM employee e, department d;
SELECT * FROM employee e1, employee e2;
SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT * FROM employee e, department d
WHERE e.dno = d.dno;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT * FROM employee;

SELECT manager.ename
FROM employee employees, employee manager
WHERE employees.manager = manager.eno AND employees.eno = 7369;

SELECT manager.ename FROM employee employees, employee manager
WHERE employees.manager = manager.eno AND employees.eno = 7369;

SELECT employees.ename FROM employee employees, employee manager
WHERE employees.manager = manager.eno AND employees.manager = 7698 AND employees.job = 'SALESMAN';

-- outer join

SELECT e1.eno, e1.manager, e1.eno FROM employee e1, employee e2
WHERE e1.manager = e2.eno(+);

SELECT e1.eno, e1.manager, e2.eno FROM employee e1
LEFT OUTER JOIN employee e2 ON e1.manager = e2.eno;

SELECT employees.ename || '�� ���� �����' || decode(manager.ename, null, ' ����', manager.ename)
FROM employee employees join employee manager
on employees.manager = manager.eno(+);

SELECT e.ename, d.dname, d.loc FROM employee e join department d ON e.dno = d.dno;
SELECT dno, job, loc FROM employee inner join department
USING(dno) WHERE dno=10;

SELECT e.ename, d.dname FROM employee e, department d
WHERE e.dno = d.dno and e.ename LIKE '%A%';

SELECT ename, job, dno, dname FROM employee natural join department
WHERE loc = 'NEW YORK';

SELECT e1.ename, e1.eno, e2.ename, e2.eno FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT e1.ename, e1.manager, e2.eno, e2.ename 
FROM employee e1, employee e2 WHERE e1.manager = e2.eno(+) ORDER BY e1.eno DESC;

SELECT e1.ename, e1.dno, e2.ename FROM employee e1, employee e2 
WHERE e1.dno = e2.dno and e1.ename='SCOTT' and e2.ename != 'SCOTT';

SELECT e2.ename, e2.hiredate FROM employee e1, employee e2
WHERE e2.hiredate > e1.hiredate and e1.ename = 'WARD';  

SELECT me.ename, me.hiredate, man.ename, man.hiredate 
FROM employee me, employee man
WHERE man.hiredate >= me.hiredate AND me.manager = man.eno;

SELECT e.ename, e.dno, d.dname 
FROM employee e, department d 
WHERE ename = 'SCOTT' AND e.dno = d.dno;

SELECT * FROM department;
SELECT e.ename, d.dname, loc FROM employee e JOIN department d
ON e.dno = d.dno;

SELECT dno, job, loc FROM employee join department USING(dno) WHERE dno = 10;

SELECT ename, dname, loc FROM employee NATURAL JOIN department
WHERE commission > 0;

SELECT e.ename, d.dname FROM employee e, department d
WHERE e.dno = d.dno AND e.ename LIKE '%A%';

SELECT ename, job, dno, dname FROM employee e NATURAL JOIN department d
WHERE d.loc = 'NEW YORK';

SELECT sa.ename, sa.eno, ma.ename, ma.eno FROM employee sa, employee ma
WHERE sa.manager = ma.eno;

SELECT * FROM employee;

SELECT sa.ename, sa.manager, ma.eno, ma.ename 
FROM employee sa, employee ma
WHERE sa.manager = ma.eno(+) ORDER BY sa.eno desc;

SELECT me.ename, me.dno, ot.ename FROM employee me, employee ot
WHERE me.dno = ot.dno and me.ename = 'SCOTT' and ot.ename != 'SCOTT';

SELECT ot.ename, ot.hiredate FROM employee me, employee ot
WHERE ot.hiredate > me.hiredate AND me.ename = 'WARD' ORDER BY hiredate;

SELECT ma.ename, ma.hiredate, sa.ename, sa.hiredate
FROM employee ma, employee sa WHERE ma.hiredate <= sa.hiredate
AND ma.manager = sa.eno;


