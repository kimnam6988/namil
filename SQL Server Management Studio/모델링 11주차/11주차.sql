/*��� �޿����� �� ���� �޿��� �޴� ����� �̸�, �޿� ���*/

select ename, salary
from employee
where salary > (select avg(salary)
				from employee)

/*�����ο��� �ٹ��ϴ� ��� ����� �̸��� �޿� ���*/

select ename, salary
from employee e, department d
where e.dno = d.dno
and dname = '������'

select ename, salary
from employee
where dno = (select dno
			 from department
			 where dname = '������')


/*������ ��������*/
/*�޿��� 500�� �ʰ��ϴ� ����� ���� �μ��� �ٹ��ϴ� ����� �̸�, �޿�, �Ҽӵ� �μ��� �μ���ȣ ���*/

select ename, salary, dno
from employee 
where dno in (select dno
			from employee
			where salary > 500)

/*30�� �μ��� �ִ� �޿����� ���� �޿��� �޴� ����� �̸�, �޿����*/

select ename, salary
from employee
where salary > all (select salary
			from employee
			where dno = 30)

/*30�� �μ��� �ּұ޿����� ���� �޿��� �޴� ����� �̸�, �޿� ���*/

select ename, salary
from employee
where salary > any(select salary
					from employee
					where dno = 30)

/*�μ���ȣ�� 10���� ����� �����ϸ� ��� �μ��� ���� ���� ���*/

select *
from department
where EXISTS (select dno
				  from employee e
				  where e.dno = 10)

/*��� ����� �μ���ȣ�� ������ �����ϸ� ��� �μ��� ���� ���� ���*/

select *
from department
where EXISTS(select e.dno
			 from employee e, department d
			 where e.dno = d.dno)



select *
from department
where exists(select top(1) dno
			 from employee)


/*50 ����, �ϻ� �μ����̺� �� ����*/

insert into department(dno, dname,loc)
values (50, '����', '�ϻ�')

/*60, �����, �������� �μ����̺� �� ����*/
insert into department
(dno, dname, loc)
values(50,'�����','��õ')

/*70 ȫ���� ���� �μ����̺� �� ���� Į���� ����*/
insert into department
values(70,'ȫ����','����')

/*80 �ѹ��� �������� �μ����̺� �� ����*/
insert into department
(dno,dname,loc)
values(80,'�ѹ���',NULL)

/*90,��ȹ��, �������� �Ͻ��� null �μ����̺� �� ����*/

insert into department
(dno, dname)
values(90,'��ȹ��')

select * into department2
from department
where 0=1

