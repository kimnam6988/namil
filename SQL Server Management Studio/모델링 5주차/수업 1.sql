/*급여가 많이 받는 순서로 사원들의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
ORDER BY SALARY DESC 

/*급여가 적게 받는 순서로 사원들의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
ORDER BY SALARY ASC

/*최근에 입사한 사원들의 순서대로 사원들의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
ORDER BY HIREDATE DESC

/*급여를 많이 받는 순으로 출력하되 같은 급여일 경우 이름의 철자가 빠른 순 출력*/

SELECT *
FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC

/*상관이 없는 사원들의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE MANAGER IS NULL
/*입사일이 빠른 순으로 사원들의 번호, 이름, 직급, 입사일 출력*/

SELECT ENO, ENAME, JOB, HIREDATE
FROM EMPLOYEE
ORDER BY HIREDATE ASC
/*부서번호가 빠른 사원부터 출력하되 같은 부서인 경우 입사일자가 최근 순소로 부서번호, 사원번호, 이름, 직급, 입사일자 출력*/

SELECT DNO, ENO, ENAME, JOB, HIREDATE
FROM EMPLOYEE
ORDER BY DNO , HIREDATE DESC

/*급여를 많이 받는 사원 5명의 모든 정보 출력*/

SELECT TOP(5) *
FROM EMPLOYEE
ORDER BY SALARY DESC

/*급여를 많이 받는 30%내의 모든 사원 정보 출력*/

SELECT TOP(30) PERCENT *
FROM EMPLOYEE
ORDER BY SALARY DESC

/*급여를 많이 받는 30%내를 출력하되 동률 데이터까지 모든 사원 정보 출력*/

SELECT TOP(30) PERCENT WITH TIES *
FROM EMPLOYEE
ORDER BY SALARY DESC

/*사원들의 직급 종류 출력하기*/

SELECT DISTINCT JOB
FROM EMPLOYEE

/*사원들의 급여 총액 출력*/

SELECT SUM(SALARY) AS '급여 출력'
FROM EMPLOYEE

/*사원들의 커미션 총액 출력*/

SELECT SUM(COMMISSION) AS '커미션 총액'
FROM EMPLOYEE

/*사원들의 급여 평균 출력*/

SELECT AVG(SALARY) AS '급여 평균'
FROM EMPLOYEE

/*사원들의 가장 높은 급여와 가장 낮은 급여 출력*/

SELECT MAX(SALARY) AS '가장 높은 급여' , MIN(SALARY) AS '가장 낮은 급여'
FROM EMPLOYEE

/*사원들 중 최대 급여를 받는 사원의 이름과 급여 출력*/

SELECT TOP(1) ENAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY DESC

/*커미션을 받는 사원들의 수 출력*/

SELECT COUNT(COMMISSION) AS '커미션을 받는 사원들의 수'
FROM EMPLOYEE

/*전체 사원의 수와 커미션을 받는 사원의 수 출력*/

SELECT COUNT(*) AS '전체 사원의 수' , COUNT(COMMISSION) AS '커미션을 받는 사원의 수'
FROM EMPLOYEE

/*사원들의 직급의 갯수 출력*/

SELECT COUNT(JOB) AS '사원들의 직급의 갯수' 
FROM EMPLOYEE

/*사원들의 직업의 종류 갯수 출력*/

SELECT COUNT(DISTINCT JOB) AS '사원들의 직급 종류 갯수)'
FROM EMPLOYEE