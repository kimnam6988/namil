
/*9�� 1�� ��������*/
insert into emp_hir 
select eno, ename, hiredate
from employee
where dno=(select dno
		   from department
		   where dno= 20)

/*9�� 2�� ��������*/
insert into emp_mgr
select eno, ename, manager
from employee
where dno = 20

/*9�� 3�� ��������*/

update employee03
set salary = salary - 50
where salary >= 300

/*9�� 4�� ����*/

update employee04
set salary = salary + 100
where dno = (select dno
			 from department
			 where loc = '��õ')

/*9�� 5�� ����*/

delete employee04
where dno = (select dno
			 from department
			 where dname = '�渮��')
 