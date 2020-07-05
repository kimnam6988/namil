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
WHERE SALARY IN (250, 300, 500)

/*급여가 250이거나 300이거나 500아닌 사원들의 사원번호, 이름 급여출력 논리 연산자 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY != 250 AND SALARY != 300 AND SALARY != 500

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT(SALARY = 250 OR SALARY = 300 OR SALARY = 500)

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT SALARY = 250 AND NOT SALARY = 300 AND NOT SALARY =500

/*급여가 250이거나 300이거나 500아닌 사원들의 사원번호, 이름 급여출력 논리 연산자 미 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY NOT IN( 250, 300, 500)

/*급여가 400에서 500인 사원의 번호, 이름, 급여 출력 논리 연산자 사용*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE 400 <= SALARY AND SALARY <= 500 


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

SELECT ENO, ENAME, SALARY, SALARY * 12 AS 연봉, SALARY*12+ISNULL(COMMISSION, 0) AS '커미션을 포함한 연봉', COMMISSION
FROM EMPLOYEE 

