select * into department2
from department
where 0 = 1

insert into department2
select top(3) * from department

select *
from department2

insert into department2
select * from department

/*employee테이블에서 모든 행 복사 employee01*/
/*1번 방법*/
select * into employee01
from employee


/*2번 방법*/
select * into employee02
from employee
where 0 = 1

insert into employee02
select * from employee

/*모든 사원의 부서번호를 30번으로 변경*/
update employee01
set dno = 30

/*모든 사원의 급여를 10% 인상시키기*/

update employee01
set salary = salary * 1.1

/*모든 사원의 입사일을 오늘로 변경*/

update employee01
set hiredate = getdate()



select *
from employee01