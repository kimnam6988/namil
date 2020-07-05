/*P.220*/
/*사원테이블에서 모든 사원의 정보 조회*/
SELECT *
FROM EMPLOYEE

/*사원테이블에서 모든 사원의 사번과 이름 조회*/

SELECT ENO,ENAME
FROM EMPLOYEE

/*모든 사원의 이름 급여 연봉 조회*/
SELECT ENAME, SALARY, SALARY*12 as 연봉
FROM EMPLOYEE

/*모든 사원의 이름, 급여, 커미션포함한 연봉 조회*/
SELECT ENAME,SALARY,SALARY*12+ COMMISSION 
FROM EMPLOYEE

SELECT ENAME,SALARY, JOB, DNO, COMMISSION, SALARY*12+ISNULL(COMMISSION,0) "커미션 포함 연봉"
FROM EMPLOYEE

/*모든 사원들이 소속된 부서번호 조회*/
SELECT DNO
FROM EMPLOYEE

/*중복 없이*/
SELECT DISTINCT DNO
FROM EMPLOYEE

/*사원 이름과 급여와 입사일자 출력*/

SELECT ENAME, SALARY, 4HIREDATE
FROM EMPLOYEE


/*모든 부서번호와 부서이름 출력*/

SELECT DNO, DNAME
FROM DEPARTMENT

/*사원의 모든 직급 종류 출력*/

SELECT DISTINCT JOB
FROM EMPLOYEE


