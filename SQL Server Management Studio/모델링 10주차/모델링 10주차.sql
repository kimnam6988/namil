create table member(
id int,
name nvarchar(20),
tel nvarchar(13),
address nvarchar(50)
)
insert into member values(1,'김우성', '010-6298-0394', '송파구 잠심2동')
insert into member values(2,'김태희','010-9596-2048','강동구 명일동')
insert into member values(3,'하지원','010-08593948','강동구 천호동')
insert into member values(4,'유재석', '010-3045-3049','강남구 서초동')

create table worker(
number int,
irum nvarchar(20),
hp nvarchar(13),
location nvarchar(50)
)
insert into member values(2,'김태희', '010-9596-2048', '강동구 명일동')
insert into member values(3,'하지원','010-08593948','강동구 천호동')
insert into member values(4,'유재석', '010-3045-3049','강남구 서초동')
insert into member values(5,'강호동', '010-2049-5069','송파구 석촌동')
insert into member values(10,'안성기', '010-3050-3049', '강남구 압구정동')

select *
from worker

/*union을 한 결과 중복된 것은 합쳐져서 나옴*/
select *
from member
union 
select *
from worker


/*union all을 한 결과 중복된 것도 다 나옴*/
select *
from member
union all
select *
from worker

/*실습문제*/
/*1번 A*/

SELECT ENAME, E.DNO, DNAME
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO = D.DNO
ORDER BY DNO

/*1-B*/

SELECT E.ENAME, E.DNO, D.DNAME
FROM EMPLOYEE E INNER JOIN DEPARTMENT D
ON E.DNO = D.DNO
ORDER BY DNO

/*2번*/

SELECT E.ENAME, E.HIREDATE
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO=D.DNO
AND D.DNAME = '경리부' 

/*3번*/

SELECT E.ENAME, D.DNAME
FROM EMPLOYEE E, DEPARTMENT D
WHERE E.DNO = D.DNO
AND E.JOB = '과장'

/*4번*/

SELECT WORK.ENAME AS [사원이름], WORK.JOB AS [직급]
FROM EMPLOYEE WORK, EMPLOYEE MANAGER
WHERE WORK.MANAGER = MANAGER.ENO
AND MANAGER.ENAME = '감우성'


/*5번*/

SELECT WORK.ENAME, FRIEND.ENAME
FROM EMPLOYEE WORK, EMPLOYEE FRIEND
WHERE WORK.DNO = FRIEND.DNO
AND WORK.ENAME = '감우성'
AND FRIEND.ENAME != '감우성'

/*이문세 사원의 소속부서명 출력*/

select dname
from employee, department
where employee.dno = department.dno
and ename = '이문세'

/*서브 쿼리*/

/*이문세의 부서명 알아내기*/
select dname
from department
where dno = (select dno
			 from employee
			 where ename = '이문세')

/*평균 급여보다 더 많은 급여를 받는 사원의 이름, 급여출력*/

select ename, salary
from employee
where salary > (select avg(salary)
				from employee)


/*급여가 500을 초과하는 사원이 소속된 부서의 부서번호 출력*/

select distinct dno
from employee
where salary > 500

select distinct dno
from employee
where dno in (select dno
			  from employee
			  where salary> 500)

/*급여가 500을 초과하는 사원과 같은 부서에 근무하는 사원의 이름, 급여, 소속된 부서의 부서번호 출력*/

select ename, salary, dno
from employee
where dno in (select dno
			  from employee
			  where salary > 500)