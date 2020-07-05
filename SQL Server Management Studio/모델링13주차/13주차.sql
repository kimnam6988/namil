/*employee03 employee 그대로 구조 생성*/
select * into employee03
from employee
where 0 = 1

/*insert 사용 모든 행 복사*/

insert into employee03
select * from employee

/*부서번호가 10번 사원의 부서번호를 30번으로 수정(employee01) */

update employee01
set dno = 30
where dno = 10

select * 
from employee01

/*employee01에서 급여가 500이상인 사원 10% 급여 인상*/

update employee01
set salary = salary * 1.1
where salary >= 500

/*employee01 2005년 입사한 사원의 입사일을 오늘로 수정*/

update employee01
set hiredate = getdate()
where hiredate like '%2005%'

/*employee01 삭제*/

drop table employee01

/*employee01 데이터를 모두 삭제*/

delete from employee01

/*생성과 삽입을 동시에 employee01을 employee에서 복사*/

select * into employee001
from employee
where 0 = 1

insert into employee01
select * from employee

/*이문세 부서번호를 20번으로 직급은 이사로 수정*/

update employee01
set dno = 20, job = '이사'
where ename = '이문세'

select *
from employee01

/*이문세 입사일자를 오늘로, 급여는 700으로, 커미션은 100으로 수정*/

update employee01
set hiredate = getdate(), salary = 700, commission = 100
where ename = '이문세'

select *
from employee01

/*department01 생성*/

select * into department01
from department

select * from department01

/*department01 20번 부서의 부서명을 40번 부서의 부서명으로 수정*/

update department01
set dname = (select dname
			 from department01
			 where dno = 20)
where dno = 40

select *
from department01

/*삭제 문법

delete from table 명
where 조건*/

/*department01 모든 행 삭제*/

delete from department01

/*department 에서 전체 행 복사 department01*/

insert into department01
select * from department

/*30번 부서를 삭제하고 삭제한 후 부서 테이블*/

delete from department01
where dno =30

/*employee01 전체 행 삭제*/

delete from employee01

/*employee에서 전체 행 삽입 복사 employee01에*/

insert into employee01
select * from employee

/*부서명이 영업부인 사원 모두 삭제*/

delete from employee01
where dno = (select dno
			 from deartment
			 where dname = '영업부')

/*employee03 생성

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

/*employee03에 employee의 사원 10번 부서 소속 사원의 */

insert into employee03
select eno,ename,job,salary
from employee
where dno = 10

/*employee03 사원중 급여가 500이상인 사원들의 급여 50씩 삭감*/

update employee03 
set salary = salary - 50
where salary >= 500

/*employee 03 사원 중 직급이 정해지지 않은 사원 삭제*/

delete from employee03
where job is null or job = ''
