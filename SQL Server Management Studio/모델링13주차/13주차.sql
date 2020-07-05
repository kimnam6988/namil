/*employee03 employee �״�� ���� ����*/
select * into employee03
from employee
where 0 = 1

/*insert ��� ��� �� ����*/

insert into employee03
select * from employee

/*�μ���ȣ�� 10�� ����� �μ���ȣ�� 30������ ����(employee01) */

update employee01
set dno = 30
where dno = 10

select * 
from employee01

/*employee01���� �޿��� 500�̻��� ��� 10% �޿� �λ�*/

update employee01
set salary = salary * 1.1
where salary >= 500

/*employee01 2005�� �Ի��� ����� �Ի����� ���÷� ����*/

update employee01
set hiredate = getdate()
where hiredate like '%2005%'

/*employee01 ����*/

drop table employee01

/*employee01 �����͸� ��� ����*/

delete from employee01

/*������ ������ ���ÿ� employee01�� employee���� ����*/

select * into employee001
from employee
where 0 = 1

insert into employee01
select * from employee

/*�̹��� �μ���ȣ�� 20������ ������ �̻�� ����*/

update employee01
set dno = 20, job = '�̻�'
where ename = '�̹���'

select *
from employee01

/*�̹��� �Ի����ڸ� ���÷�, �޿��� 700����, Ŀ�̼��� 100���� ����*/

update employee01
set hiredate = getdate(), salary = 700, commission = 100
where ename = '�̹���'

select *
from employee01

/*department01 ����*/

select * into department01
from department

select * from department01

/*department01 20�� �μ��� �μ����� 40�� �μ��� �μ������� ����*/

update department01
set dname = (select dname
			 from department01
			 where dno = 20)
where dno = 40

select *
from department01

/*���� ����

delete from table ��
where ����*/

/*department01 ��� �� ����*/

delete from department01

/*department ���� ��ü �� ���� department01*/

insert into department01
select * from department

/*30�� �μ��� �����ϰ� ������ �� �μ� ���̺�*/

delete from department01
where dno =30

/*employee01 ��ü �� ����*/

delete from employee01

/*employee���� ��ü �� ���� ���� employee01��*/

insert into employee01
select * from employee

/*�μ����� �������� ��� ��� ����*/

delete from employee01
where dno = (select dno
			 from deartment
			 where dname = '������')

/*employee03 ����

eno int not null;
ename nvarchar(20);
job nvarchar(20);
salary int
*/

create table employee03
(
eno int not null,
ename nvarchar(20),
job nvarchar(20),
salary int
)

insert into employee03 values(1000,'APPLE','POLICE', 100)
insert into employee03 values(1010,'BANANA','NURSE', 150)
insert into employee03 values(1020,'ORANGE','DOCTOR', 250)
insert into employee03 values(1030,'VERY','NULL', 250)
insert into employee03 values(1040,'CAT','', 200)


select * 
from employee03

/*employee03�� employee�� ��� 10�� �μ� �Ҽ� ����� */

insert into employee03
select eno,ename,job,salary
from employee
where dno = 10

/*employee03 ����� �޿��� 500�̻��� ������� �޿� 50�� �谨*/

update employee03 
set salary = salary - 50
where salary >= 500

/*employee 03 ��� �� ������ �������� ���� ��� ����*/

delete from employee03
where job is null or job = ''
