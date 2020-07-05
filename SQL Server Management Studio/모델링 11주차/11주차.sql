/*평균 급여보다 더 많은 급여를 받는 사원의 이름, 급여 출력*/

select ename, salary
from employee
where salary > (select avg(salary)
				from employee)

/*영업부에서 근무하는 모든 사원의 이름과 급여 출력*/

select ename, salary
from employee e, department d
where e.dno = d.dno
and dname = '영업부'

select ename, salary
from employee
where dno = (select dno
			 from department
			 where dname = '영업부')


/*다중행 서브쿼리*/
/*급여가 500을 초과하는 사원과 같은 부서에 근무하는 사원의 이름, 급여, 소속된 부서의 부서번호 출력*/

select ename, salary, dno
from employee 
where dno in (select dno
			from employee
			where salary > 500)

/*30번 부서의 최대 급여보다 많은 급여를 받는 사원의 이름, 급여출력*/

select ename, salary
from employee
where salary > all (select salary
			from employee
			where dno = 30)

/*30번 부서의 최소급여보다 많은 급여를 받는 사원의 이름, 급여 출력*/

select ename, salary
from employee
where salary > any(select salary
					from employee
					where dno = 30)

/*부서번호가 10번인 사원이 존재하면 모든 부서에 대한 정보 출력*/

select *
from department
where EXISTS (select dno
				  from employee e
				  where e.dno = 10)

/*모든 사원의 부서번호의 정보가 존재하면 모든 부서에 대한 정보 출력*/

select *
from department
where EXISTS(select e.dno
			 from employee e, department d
			 where e.dno = d.dno)



select *
from department
where exists(select top(1) dno
			 from employee)


/*50 토목부, 일산 부서테이블 행 삽입*/

insert into department(dno, dname,loc)
values (50, '토목부', '일산')

/*60, 생산부, 지역미정 부서테이블 행 삽입*/
insert into department
(dno, dname, loc)
values(50,'생산부','포천')

/*70 홍보부 성남 부서테이블 행 삽입 칼럼명 생략*/
insert into department
values(70,'홍보부','성남')

/*80 총무부 지역미정 부서테이블 행 상입*/
insert into department
(dno,dname,loc)
values(80,'총무부',NULL)

/*90,기획부, 지역미정 암시적 null 부서테이블 행 삽입*/

insert into department
(dno, dname)
values(90,'기획부')

select * into department2
from department
where 0=1

