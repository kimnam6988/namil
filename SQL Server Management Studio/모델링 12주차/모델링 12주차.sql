select * into department2
from department
where 0 = 1

insert into department2
select top(3) * from department

select *
from department2

insert into department2
select * from department

/*employee���̺��� ��� �� ���� employee01*/
/*1�� ���*/
select * into employee01
from employee


/*2�� ���*/
select * into employee02
from employee
where 0 = 1

insert into employee02
select * from employee

/*��� ����� �μ���ȣ�� 30������ ����*/
update employee01
set dno = 30

/*��� ����� �޿��� 10% �λ��Ű��*/

update employee01
set salary = salary * 1.1

/*��� ����� �Ի����� ���÷� ����*/

update employee01
set hiredate = getdate()



select *
from employee01