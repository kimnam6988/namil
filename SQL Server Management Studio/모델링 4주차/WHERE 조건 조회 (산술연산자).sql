/*급여가 500이상인 사원 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE SALARY>=500

/*10번 부서에 소속된 사원의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE DNO = 10

/*이문세 사원의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE ENAME = '이문세'

/*2005년1월1일 이전에 입사한 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE HIREDATE < '2005-01-01'

/*2005년 1월 1일 이후에 입사한 사원의 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE HIREDATE > '2005-1-1'


