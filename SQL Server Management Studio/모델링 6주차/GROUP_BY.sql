SELECT COUNT(JOB) AS '사원들의 직급의 수'
FROM EMPLOYEE

SELECT COUNT(DISTINCT JOB) AS '사원들의 직급의 종류의 수'
FROM EMPLOYEE


/*소속 부서별 평균 급여 구하기*/
SELECT AVG(SALARY) AS '부서별 평균 급여'
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 평균 급여를 부서번호와 출력*/
SELECT AVG(SALARY) AS '부서별 평균 급여' , DNO
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 급여총액과 평균 급여 출력*/

SELECT SUM(SALARY) AS '부서별 급여총액' , AVG(SALARY) AS '부서별 평균 급여'
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 최대 급여와 최소 급여 출력*/

SELECT MAX(SALARY) AS '부서별 최대 급여' , MIN(SALARY) AS '부서별 최소 급여'
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 사원 수와 커미션 받는 사원 수 구하기*/

SELECT COUNT(ENO) AS '부서별 사원수' , COUNT(COMMISSION) AS '부서별 커미션 받는 사원 수'
FROM EMPLOYEE
GROUP BY DNO

/*소속 부서별 부서번호, 사원 이름, 평균급여 출력*/

SELECT DNO, AVG(SALARY) AS '평균 급여'					/*집계 함수나 group by 절에 없는 칼럼은 select 목록에서 사용 불가*/
FROM EMPLOYEE
GROUP BY DNO


/*Having 구문*/

/*부서별로 평균 급여가 500 이상인 부서번호와 평균 급여 출력*/

SELECT DNO, AVG(SALARY) AS '평균 급여'
FROM EMPLOYEE
GROUP BY DNO
HAVING AVG(SALARY) >= 500

/*최대급여가 500을 초과하는 부서에 대해 부서번호 최대급여 최소급여 출력*/

SELECT DNO, MAX(SALARY) AS [최대 급여], MIN(SALARY) AS [최소급여]
FROM EMPLOYEE
GROUP BY DNO
HAVING MAX(SALARY) > 500

/*ROLL UP*/

/*부서별 급여 총액 구하되 부서내에서 직급별로 급여 총액 출력 부서별 중간합계 최종합계 출력*/

SELECT DNO, JOB, SUM(SALARY) [급여 총액]
FROM EMPLOYEE
GROUP BY DNO , JOB WITH ROLLUP 


/*부서별 급여 총액 구하되 부서내에서 직급별로 급여 총액 출력 부서별과 직급별 중간합계 최종합계 출력*/

SELECT DNO, JOB, SUM(SALARY)[급여총액]
FROM EMPLOYEE
GROUP BY DNO, JOB WITH CUBE
ORDER BY DNO DESC

/*CASE*/

/*각 부서번호 해달하는 부서명을 부서번호와 함께 출력*/

SELECT DNO, ENAME,
 CASE WHEN DNO = 10 THEN '경리부'
	  WHEN DNO = 20 THEN '인사부'
	  WHEN DNO = 30 THEN '영업부'
	  ELSE'전산부'
 END AS DNAME
 FROM EMPLOYEE

 /*부서별 급여 총액을 구하되 부서 내에서 다시 직급별로 급여 총액 구하기
그리고 부서별 총합에 대한 중간 합계 와 사원 전체에 대한 급여 총액 구하기!*/

SELECT DNO, JOB, SUM(SALARY) AS 급여총액
FROM EMPLOYEE
GROUP BY DNO, JOB
ORDER BY DNO

SELECT DNO, JOB, SUM(SALARY) [급여 총액]
FROM EMPLOYEE
GROUP BY DNO, JOB WITH ROLLUP

/*가장 최근에 입사한 사원의 입사일과 입사한지 가장 오래된 사원의 입사일을 출력*/

SELECT MAX(HIREDATE) AS '최근 입사한 사원', MIN(HIREDATE) AS '오래된 사원'
FROM EMPLOYEE

/*30번 부서 소속 사원 중 커미션 받는 사원의 수 출력*/

SELECT DNO, COUNT(COMMISSION) [커미션 받는 사원의 수]
FROM EMPLOYEE
GROUP BY DNO
HAVING DNO = 30

SELECT DNO, COUNT(COMMISSION) [커미션 받는 사원의 수]
FROM EMPLOYEE
WHERE DNO = 30
GROUP BY DNO


/*부서별로 각 급여 합계를 부서번호와 함께 출력*/

SELECT DNO, SUM(SALARY) [급여 합계]
FROM EMPLOYEE
GROUP BY DNO