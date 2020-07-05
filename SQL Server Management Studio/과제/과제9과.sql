
/*9과 1번 연습문제*/
insert into emp_hir 
select eno, ename, hiredate
from employee
where dno=(select dno
		   from department
		   where dno= 20)

/*9과 2번 연습문제*/
insert into emp_mgr
select eno, ename, manager
from employee
where dno = 20

/*9과 3번 연습문제*/

update employee03
set salary = salary - 50
where salary >= 300

/*9과 4번 문제*/

update employee04
set salary = salary + 100
where dno = (select dno
			 from department
			 where loc = '인천')

/*9과 5번 문제*/

delete employee04
where dno = (select dno
			 from department
			 where dname = '경리부')
 