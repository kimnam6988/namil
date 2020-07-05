/*employee �� department�� cross join*/

select *
from employee, department



/*equi ����  ���� ī���������� ���� ��������*/
/*�̹��� ����� �μ��� ���*/

select department.dname
from employee, department
where employee.dno = department.dno and ename = '�̹���'


/*��� ������� �Ҽӵ� �μ��� ���� ����� �μ��� ��� ���� ��ȸ*/
/*equi join*/

select *
from employee, department
where employee.dno = department.dno

/*�̹��� ����� �̸��� �Ҽ� �μ� �̸� ���*/

select ename, dname
from employee, department
where employee.dno = department.dno 
and ename = '�̹���'

/*��� ������� �Ҽӵ� �μ��� ���� ��� �̸��� �μ� �̸� ��ȸ*/

select ename, dname
from employee, department
where employee.dno = department.dno

/*�̹��� ����� �̸��� �Ҽ� �μ� �̸��� �μ���ȣ ���*/

select ename, dname, department.dno
from employee, department
where employee.dno = department.dno and ename = '�̹���'

/*�̹��� ����� �̸��� �Ҽ� �μ� �̸��� �μ���ȣ ��� ���̺� ��Ī ���*/

select ename, dname, b.dno
from employee a, department b
where a.dno = b.dno 
and ename = '�̹���'

/*��� ����� �̸�, �޿�, �޿���� ���*/

select ename, salary, grade
from employee, salgrade
where salary between lowsal and highsal

/*��� ����� �̸�, �޿�, �޿���� ��� �������� ���*/

select ename, salary, grade
from employee, salgrade
where salary >= lowsal and salary <= highsal

/*��� ����� �̸�, �Ҽ� �μ� �̸�, �޿��� �޿� ��� ���*/

select ename, dname, salary, grade
from employee, department, salgrade
where employee.dno = department.dno 
and employee.salary between salgrade.lowsal and salgrade.highsal

/*�渮 �μ��� �ٹ��ϴ� ����� �̸��� �Ի��� ���*/

select ename, hiredate
from employee a, department b
where a.dno = b.dno and dname = '�渮��'

/*��õ���� �ٹ��ϴ� ����� �̸��� �޿� ���*/

select ename, salary
from employee a, department b
where a.dno = b.dno and loc = '��õ'

/*�� ����� �̸��� ��� �̸� ���*/

select member.ename as [��� �̸�], manager.ename as [��� �̸�]
from employee member, employee manager
where member.manager = manager.eno


-- ANSI ���� --
-- EMPLOYEE�� DEPARTMENT�� ANSI CROSS JOIN --
SELECT *
FROM EMPLOYEE CROSS JOIN DEPARTMENT

-- ANSI INNER JOIN --
-- �̹��� ����� �̸��� �Ҽ� �μ� �̸� ��� (ANSI ����) --
SELECT ENAME, DNAME
FROM EMPLOYEE INNER JOIN DEPARTMENT
ON EMPLOYEE.DNO = DEPARTMENT.DNO
WHERE ENAME = '�̹���'

-- ANSI OUTER JOIN --
SELECT E1.ENAME as '����̸�', E2.ENAME as '���ӻ���̸�'
FROM EMPLOYEE E1 LEFT OUTER JOIN EMPLOYEE E2
ON E1.MANAGER = E2.ENO


SELECT DNO, DNAME INTO DEPT01
FROM DEPARTMENT
WHERE DNO IN(10, 20)

SELECT * 
FROM DEPT01

SELECT DNO, DNAME INTO DEPT02
FROM DEPARTMENT
WHERE DNO IN(10, 30)

SELECT * 
FROM DEPT02

/*inner join*/

select *
from dept01 inner join dept02
on dept01.dno = dept02.dno

/*left outer join*/

select *
from dept01 left outer join dept02
on dept01.dno = dept02.dno

/*right outer join*/

select *
from dept01 right outer join dept02
on dept01.dno = dept02.dno

/*full outer join*/

select *
from dept01 full outer join dept02
on dept01.dno = dept02.dno