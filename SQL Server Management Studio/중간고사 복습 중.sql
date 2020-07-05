/*급여가 300이하인 사원의 사원번호, 사원이름, 급여 출력*/

select eno, ename, salary
from EMPLOYEE
where salary <= 300

/*사원이름이 "오지호"인 사원의 사원번호, 이름, 급여 출력*/

select eno, ename, salary
from EMPLOYEE
where ename = '오지호'

/*급여가 250이거나 300이거나 500인 사원들의 사원번호, 이름, 급여 출력 논리 연산자 사용*/

select eno, ename, salary
from employee
where salary = 250 or salary = 300 or salary = 500

/*급여가 250이거나 300이거나 500인 사원들의 사원번호, 이름 급여출력 논리 연산자 미 사용*/

select eno, ename, salary
from EMPLOYEE
where salary in (250, 300, 500)

/*급여가 250이거나 300이거나 500아닌 사원들의 사원번호, 이름 급여출력 논리 연산자 사용*/

select eno, ename, salary
from employee
where salary != 250 and salary != 300 and salary != 500

select eno, ename, salary
from employee
where not salary = 250 and not salary = 300 and not salary = 500

select eno, ename, salary
from employee
where not(salary = 250 or salary = 300 or salary = 500)

/*급여가 250이거나 300이거나 500아닌 사원들의 사원번호, 이름 급여출력 논리 연산자 미 사용*/

select eno, ename, salary
from employee
where salary not in (250, 300, 500)

/*급여가 400에서 500인 사원의 번호, 이름, 급여 출력 논리 연산자 사용*/

select eno, ename, salary
from employee
where salary >= 400 and salary <= 500

/*급여가 400에서 500인 사원의 번호, 이름, 급여 출력 논리 연산자 미사용*/

select eno, ename , salary
from employee
where salary between 400 and 500

/*사원들 중 이름이 김으로 시작하는 사원의 번호, 이름 출력*/

select eno, ename
from employee
where ename like '김%'

/*이름에 성을 포함하는 사원들의 모든 정보 출력9*/

select *
from EMPLOYEE
where ename like '%성%'

/*이름의 세번째 글자가 성인 사원의 모드 정보 출력*/

select *
from employee
where ename like '__성%'

/*커미션이 NULL인 사원들의 모든 정보 출력*/

select *
from EMPLOYEE
where commission is null

/*커미션이 NULL이 아닌 사원들의 모든 정보 출력*/

select *
from employee
where commission is not null

/*모든 사원들의 번호, 이름, 급여, 연봉, 커미션을 포함한 연봉출력*/

select eno, ename, salary, salary*12 as 연봉, salary * 12 + isnull(commission, 0) as [커미션을 포함한 연봉]
from employee


/*급여가 많이 받는 순서로 사원들의 모든 정보 출력*/

select *
from employee
order by salary desc

/*급여가 적게 받는 순서로 사원들의 모든 정보 출력*/

select *
from employee
order by salary asc

/*최근에 입사한 사원들의 순서대로 사원들의 모든 정보 출력*/

select *
from employee
order by hiredate desc

/*급여를 많이 받는 순으로 출력하되 같은 급여일 경우 이름의 철자가 빠른 순 출력*/

select *
from employee
order by salary desc, ename asc

/*상관이 없는 사원들의 모든 정보 출력*/

select *
from employee
where manager is null

/*입사일이 빠른 순으로 사원들의 번호, 이름, 직급, 입사일 출력*/

select eno, ename, job, hiredate
from employee
order by hiredate asc

/*부서번호가 빠른 사원부터 출력하되 같은 부서인 경우 입사일자가 최근 순소로 부서번호, 사원번호, 이름, 직급, 입사일자 출력*/

select dno, eno, ename, job, hiredate
from employee
order by dno desc, hiredate desc

/*급여를 많이 받는 사원 5명의 모든 정보 출력*/

select top (5) *
from employee
order by salary desc

/*급여를 많이 받는 30%내의 모든 사원 정보 출력*/

select top(30) percent *
from employee
order by salary desc

/*급여를 많이 받는 30%내를 출력하되 동률 데이터까지 모든 사원 정보 출력*/

select top (30) percent with ties *
from employee
order by salary desc


/*사원들의 직급 종류 출력하기*/

select distinct job
from employee

/*사원들의 급여 총액 출력*/

select sum(salary) as [사원급여 총액]
from employee

/*사원들의 커미션 총액 출력*/

select sum(commission) as [커미션 총액]
from employee

/*사원들의 급여 평균 출력*/

select avg(salary) as [급여 평균]
from employee

/*사원들의 가장 높은 급여와 가장 낮은 급여 출력*/

select max(salary)as [높은 급여] , min(salary) as [낮은 급여]
from employee

/*사원들 중 최대 급여를 받는 사원의 이름과 급여 출력*/

select top(1) ename, salary
from employee
order by salary desc

/*커미션을 받는 사원들의 수 출력*/

select count(commission) as [커미션을 받는 사원 수]
from employee

/*전체 사원의 수와 커미션을 받는 사원의 수 출력*/

select count(eno) as [전 사원수] , count(commission) as [커미션을 받는 사원 수]
from employee

/*사원들의 직급의 갯수 출력*/

select count(job) as [사원 직급의 수]
from employee

/*사원들의 직업의 종류 갯수 출력*/

select count(distinct job) as [직업의 종류 갯수]
from employee

/*TEST 테이블에서 AMOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 다음 순위 건너뛰기*/

select * ,
rank() over (order by amount desc) as 순위
from test

/*TEST 테이블에서 AMOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 다음 순위 건너뛰지 않기*/

select *,
dense_rank() over (order by amount desc) as 순위
from test

/*TEST 테이블에서 AMOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 순위 겹치지 않기*/

select *,
row_number() over (order by amount desc) as 순위
from test

/*TEST 테이블에서 많은 순으로 6그룹으로 나눈 후 그룹 순위 매기기*/

select year, quarter, amount,
ntile(6) over (order by amount desc) as [순위]
from test


/*TEST 테이블에서 많은 순으로 5그룹으로 나눈 후 그룹 순위 매기기*/

select year, quarter, amount,
ntile(5) over (order by amount desc) as [순위]
from test

/*TEST 테이블에서 년도별로 그룹지어 그룹내 건너 뛰기 순위 매기기*/

select year, quarter, amount,
rank() over(partition by year order by amount desc) as 순위
from test
/*320쪽 해보기*/


/*소속 부서별 평균 급여 구하기*/

select dno, avg(salary) as [평균 급여]
from employee
group by dno 

/*소속 부서별 평균 급여를 부서번호와 출력*/

select dno, avg(salary) as 평균급여
from employee
group by dno 

/*소속 부서별 급여총액과 평균 급여 출력*/

select dno, sum(salary) as 급여총액, avg(salary) as 평균급여
from employee
group by dno

/*소속 부서별 최대 급여와 최소 급여 출력*/

select max(salary) as [최대 급여], min(salary) as [최소 급여]
from employee
group by dno 

/*소속 부서별 사원 수와 커미션 받는 사원 수 구하기*/

select dno, sum(eno) as [사원 수], sum(commission) as [커미션 받는 사원 수]
from employee
group by dno

/*소속 부서별 부서번호, 사원 이름, 평균급여 출력*/

select dno, avg(salary)
from employee
group by dno

/*부서별로 평균 급여가 500 이상인 부서번호와 평균 급여 출력*/

select dno, avg(salary) as [평균 급여]
from employee
group by dno
having avg(salary) >= 500

/*최대급여가 500을 초과하는 부서에 대해 부서번호 최대급여 최소급여 출력*/

select dno, max(salary) as [최대 급여], min(salary) as [최소 급여]
from employee
group by dno
having max(salary) > 500

/*부서별 급여 총액 구하되 부서내에서 직급별로 급여 총액 출력 부서별 중간합계 최종합계 출력*/

select dno, sum(salary) as [급여총액], job
from employee
group by dno , job with rollup

/*부서별 급여 총액 구하되 부서내에서 직급별로 급여 총액 출력 부서별과 직급별 중간합계 최종합계 출력*/

select dno, sum(salary)as [급여총액], job
from employee
group by dno, job with cube
order by dno desc, job desc

/*각 부서번호 해당하는 부서명을 부서번호와 함께 출력*/

select ename , dno,
case when dno = 10 then '경리부'
   when dno = 20 then '인사부' 
   when dno = 30 then '관리부'
end as dname
from employee

 /*부서별 급여 총액을 구하되 부서 내에서 다시 직급별로 급여 총액 구하기
그리고 부서별 총합에 대한 중간 합계 와 사원 전체에 대한 급여 총액 구하기!*/

select dno, job, sum(salary) as [급여 총액]
from employee
group by dno, job with rollup

/*가장 최근에 입사한 사원의 입사일과 입사한지 가장 오래된 사원의 입사일을 출력*/

select max(hiredate) as [신입 사원], min(hiredate) as [오래된 사원]
from employee

/*30번 부서 소속 사원 중 커미션 받는 사원의 수 출력*/

select dno, count(commission) as [커미션 받는 사원 수]
from employee
group by dno
having dno = 30

select dno,  count(commission) as [커미션 받는 사원 수]
from employee
where dno = 30
group by dno

/*부서별로 각 급여 합계를 부서번호와 함께 출력*/

select dno, sum(salary) as [급여 합계]
from employee
group by dno