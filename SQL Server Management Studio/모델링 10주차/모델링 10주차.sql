create table member(
id int,
name nvarchar(20),
tel nvarchar(13),
address nvarchar(50)
)
insert into member values(1,'��켺', '010-6298-0394', '���ı� ���2��')
insert into member values(2,'������','010-9596-2048','������ ���ϵ�')
insert into member values(3,'������','010-08593948','������ õȣ��')
insert into member values(4,'���缮', '010-3045-3049','������ ���ʵ�')

create table worker(
number int,
irum nvarchar(20),
hp nvarchar(13),
location nvarchar(50)
)
insert into member values(2,'������', '010-9596-2048', '������ ���ϵ�')
insert into member values(3,'������','010-08593948','������ õȣ��')
insert into member values(4,'���缮', '010-3045-3049','������ ���ʵ�')
insert into member values(5,'��ȣ��', '010-2049-5069','���ı� ���̵�')
insert into member values(10,'�ȼ���', '010-3050-3049', '������ �б�����')

select *
from worker

/*union�� �� ��� �ߺ��� ���� �������� ����*/
select *
from member
union 
select *
from worker


/*union all�� �� ��� �ߺ��� �͵� �� ����*/
select *
from member
union all
select *
from worker

/*�ǽ�����*/
/*1�� A*/

SELECT ENAME, E.DNO, DNAME
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO = D.DNO
ORDER BY DNO

/*1-B*/

SELECT E.ENAME, E.DNO, D.DNAME
FROM EMPLOYEE E INNER JOIN DEPARTMENT D
ON E.DNO = D.DNO
ORDER BY DNO

/*2��*/

SELECT E.ENAME, E.HIREDATE
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO=D.DNO
AND D.DNAME = '�渮��' 

/*3��*/

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO = D.DNO
AND E.JOB = '����'

/*4��*/

SELECT WORK.ENAME AS [����̸�], WORK.JOB AS [����]
FROM EMPLOYEE WORK, EMPLOYEE MANAGER
WHERE WORK.MANAGER = MANAGER.ENO
AND MANAGER.ENAME = '���켺'


/*5��*/

SELECT WORK.ENAME, FRIEND.ENAME
FROM EMPLOYEE WORK, EMPLOYEE FRIEND
WHERE WORK.DNO = FRIEND.DNO
AND WORK.ENAME = '���켺'
AND FRIEND.ENAME != '���켺'

/*�̹��� ����� �ҼӺμ��� ���*/

select dname
from employee, department
where employee.dno = department.dno
and ename = '�̹���'

/*���� ����*/

/*�̹����� �μ��� �˾Ƴ���*/
select dname
from department
where dno = (select dno
			 from employee
			 where ename = '�̹���')

/*��� �޿����� �� ���� �޿��� �޴� ����� �̸�, �޿����*/

select ename, salary
from employee
where salary > (select avg(salary)
				from employee)


/*�޿��� 500�� �ʰ��ϴ� ����� �Ҽӵ� �μ��� �μ���ȣ ���*/

select distinct dno
from employee
where salary > 500

select distinct dno
from employee
where dno in (select dno
			  from employee
			  where salary> 500)

/*�޿��� 500�� �ʰ��ϴ� ����� ���� �μ��� �ٹ��ϴ� ����� �̸�, �޿�, �Ҽӵ� �μ��� �μ���ȣ ���*/

select ename, salary, dno
from employee
where dno in (select dno
			  from employee
			  where salary > 500)