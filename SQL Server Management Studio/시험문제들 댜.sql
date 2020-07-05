/*급여가 300이하인 사원의 사원번호, 사원이름, 급여 출력*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY <= 300

/*사원이름이 "오지호"인 사원의 사원번호, 이름, 급여 출력*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE ENAME = '오지호'

/*급여가 250이거나 300이거나 500인 사원들의 사원번호, 이름, 급여 출력 논리 연산자 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY = 250 OR SALARY = 300 OR SALARY = 500

/*급여가 250이거나 300이거나 500인 사원들의 사원번호, 이름 급여출력 논리 연산자 미 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY IN (250,300,500)

/*급여가 250이거나 300이거나 500아닌 사원들의 사원번호, 이름 급여출력 논리 연산자 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY != 250 AND SALARY != 300 AND SALARY != 500

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT (SALARY = 250 OR SALARY = 300 OR SALARY = 500)

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT SALARY = 250 AND NOT SALARY = 300 AND NOT SALARY = 500

/*급여가 250이거나 300이거나 500아닌 사원들의 사원번호, 이름 급여출력 논리 연산자 미 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY NOT IN (250,300,500)
/*급여가 400에서 500인 사원의 번호, 이름, 급여 출력 논리 연산자 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY>=400 AND SALARY <= 500

/*급여가 400에서 500인 사원의 번호, 이름, 급여 출력 논리 연산자 미사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 400 AND 500

/*사원들 중 이름이 김으로 시작하는 사원의 번호, 이름 출력*/

SELECT ENO, ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '김%'

/*이름에 성을 포함하는 사원들의 모든 정보 출력9*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%성%'

/*이름의 세번째 글자가 성인 사원의 모드 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '__성%'

/*커미션이 NULL인 사원들의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE COMMISSION IS NULL

/*커미션이 NULL이 아닌 사원들의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL

/*모든 사원들의 번호, 이름, 급여, 연봉, 커미션을 포함한 연봉출력*/

SELECT ENO, ENAME, SALARY, SALARY * 12 AS '연봉', SALARY * 12 + ISNULL(COMMISSION,0) AS ' 커미션을 포함한 연봉'
FROM EMPLOYEE

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
ORDER BY DNO ASC, HIREDATE DESC

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

SELECT SUM(SALARY) AS '급여 총액'
FROM EMPLOYEE

/*사원들의 커미션 총액 출력*/

SELECT SUM(COMMISSION) AS '커미션 총액'
FROM EMPLOYEE


/*사원들의 급여 평균 출력*/

SELECT AVG(SALARY) AS '급여 평균'
FROM EMPLOYEE

/*사원들의 가장 높은 급여와 가장 낮은 급여 출력*/

SELECT MAX(SALARY) AS '가장 높은 급여' , MIN(SALARY) '가장 낮은 급여'
FROM EMPLOYEE

/*사원들 중 최대 급여를 받는 사원의 이름과 급여 출력*/

SELECT TOP(1) ENAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY DESC

/*커미션을 받는 사원들의 수 출력*/

SELECT COUNT(COMMISSION) AS '커미션을 받는 사원들의 수'
FROM EMPLOYEE

/*전체 사원의 수와 커미션을 받는 사원의 수 출력*/

SELECT COUNT(*) AS '사원의 수' , COUNT(COMMISSION) '커미션을 받는 사원의 수'
FROM EMPLOYEE

/*사원들의 직급의 갯수 출력*/

SELECT COUNT(JOB) AS '사원들의 직급의 갯수'
FROM EMPLOYEE

/*사원들의 직업의 종류 갯수 출력*/

SELECT COUNT(DISTINCT JOB) AS '사원들의 직업의 종류'
FROM EMPLOYEE