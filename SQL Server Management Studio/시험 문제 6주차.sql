/*소속 부서별 평균 급여 구하기*/

SELECT AVG(SALARY) AS [평균 급여]
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 평균 급여를 부서번호와 출력*/

SELECT DNO, AVG(SALARY) AS [평균 급여]
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 급여총액과 평균 급여 출력*/

SELECT SUM(SALARY) AS [급여 총액], AVG(SALARY) AS [평균 급여]
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 최대 급여와 최소 급여 출력*/

SELECT MAX(SALARY) AS [최대급여], MIN(SALARY) AS [최소급여]
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 사원 수와 커미션 받는 사원 수 구하기*/

SELECT COUNT(ENO) AS [사원 수] , COUNT(COMMISSION) AS [커미션 받는 사원 수]
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 부서번호, 사원 이름, 평균급여 출력*/					/*사원 이름은 그룹바이 절에 포함되지 않은 집계 함수이므로 오류*/

select dno, avg(salary) as [평균 급여]
from employee
group by dno

/*부서별로 평균 급여가 500 이상인 부서번호와 평균 급여 출력*/

select dno, avg(salary) as [평균 급여]
from employee
group by dno
having avg(salary) >= 500

/*최대급여가 500을 초과하는 부서에 대해 부서번호 최대급여 최소급여 출력*/

select dno, max(salary) as [최대급여], min(salary) as [최소급여]
from employee
group by dno
having max(salary) > 500

/*부서별 급여 총액 구하되 부서내에서 직급별로 급여 총액 출력 부서별 중간합계 최종합계 출력*/

select dno, job, sum(salary) as[급여총액]
from employee
group by dno, job
order by dno

/*부서별 급여 총액 구하되 부서내에서 직급별로 급여 총액 출력 부서별과 직급별 중간합계 최종합계 출력*/

select dno, job, sum(salary) as [급여 총액]
from employee
group by dno ,job with rollup

select dno, job, sum(salary) as [급여총액]
from employee
group by dno, job with cube
order by dno desc, job desc

/*각 부서번호 해달하는 부서명을 부서번호와 함께 출력*/

select ename, dno,
case when dno = 10 then '경리부'
	 when dno = 20 then '인사부'
	 when dno = 30 then '영업부'
	 when dno = 40 then '전산부'
	 end as dname
from employee

 /*부서별 급여 총액을 구하되 부서 내에서 다시 직급별로 급여 총액 구하기
그리고 부서별 총합에 대한 중간 합계 와 사원 전체에 대한 급여 총액 구하기!*/
SELECT DNO, JOB, SUM(SALARY) [급여 총액]
FROM EMPLOYEE
GROUP BY DNO, JOB WITH ROLLUP



/*가장 최근에 입사한 사원의 입사일과 입사한지 가장 오래된 사원의 입사일을 출력*/

select max(hiredate) as [신입 사원], min(hiredate) as [오래된 사원]
from EMPLOYEE


/*30번 부서 소속 사원 중 커미션 받는 사원의 수 출력*/

select dno, count(commission) as '커미션 받는 사원의 수'
from EMPLOYEE
group by dno
having dno = 30

/*부서별로 각 급여 합계를 부서번호와 함께 출력*/

select dno, sum(salary) as [급여 합계]
from EMPLOYEE
group by dno

/*SELECT 가져올 컬럼명, [열로 병환시킬 행]
FROM 테이블
PIVOT (집계함수(검색할 열)
FOR 크로스탭의 기준이 되는 열
IN([변환시킬행])) AS 피벗 테이블의 별칭*/

select year,[1],[2],[3],[4]
from test
pivot (sum(amount)
for quarter
in ([1],[2],[3],[4])) as melong

select year, [1],[2],[3],[4]
from test
pivot (sum(amount)
for quarter
in([1],[2],[3],[4])) as sksksk
/* UNPIVOT */

select year, quarter, amount
from TEST2
unpivot (amount
for quarter
in ([q1],[q2],[q3],[q4])) as menon

/*TEST 테이블에서 AMOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 다음 순위 건너뛰기*/

SELECT YEAR, QUARTER, AMOUNT, RANK() OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 AMOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 다음 순위 건너뛰지 않기*/

SELECT YEAR, QUARTER, AMOUNT,DENSE_RANK() OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 AMOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 순위 겹치지 않기*/

SELECT YEAR, QUARTER, AMOUNT, ROW_NUMBER() OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 많은 순으로 6그룹으로 나눈 후 그룹 순위 매기기*/

SELECT YEAR, QUARTER, AMOUNT,  NTILE (6) OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 많은 순으로 5그룹으로 나눈 후 그룹 순위 매기기*/

SELECT YEAR, QUARTER, AMOUNT ,NTILE(5) OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 년도별로 그룹지어 그룹내 건너 뛰기 순위 매기기*/

SELECT YEAR, QUARTER, AMOUNT, RANK() OVER (PARTITION BY YEAR ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*320쪽 해보기*/