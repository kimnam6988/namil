/*employee 와 department의 cross join*/

select *
from employee, department



/*equi 조인  동일 카럼기준으로 조인 동등조인*/
/*이문세 사원의 부서명 출력*/

select department.dname
from employee, department
where employee.dno = department.dno and ename = '이문세'


/*모든 사원들의 소속된 부서에 대한 사원과 부서의 모든 정보 조회*/
/*equi join*/

select *
from employee, department
where employee.dno = department.dno

/*이문세 사원의 이름과 소속 부서 이름 출력*/

select ename, dname
from employee, department
where employee.dno = department.dno 
and ename = '이문세'

/*모든 사원들의 소속된 부서에 대한 사원 이름과 부서 이름 조회*/

select ename, dname
from employee, department
where employee.dno = department.dno

/*이문세 사원의 이름과 소속 부서 이름과 부서번호 출력*/

select ename, dname, department.dno
from employee, department
where employee.dno = department.dno and ename = '이문세'

/*이문세 사원의 이름과 소속 부서 이름과 부서번호 출력 테이블 별칭 사용*/

select ename, dname, b.dno
from employee a, department b
where a.dno = b.dno 
and ename = '이문세'

/*모든 사원의 이름, 급여, 급여등급 출력*/

select ename, salary, grade
from employee, salgrade
where salary between lowsal and highsal

/*모든 사원의 이름, 급여, 급여등급 출력 논리연산자 사용*/

select ename, salary, grade
from employee, salgrade
where salary >= lowsal and salary <= highsal

/*모든 사원의 이름, 소속 부서 이름, 급여와 급여 등급 출력*/

select ename, dname, salary, grade
from employee, department, salgrade
where employee.dno = department.dno 
and employee.salary between salgrade.lowsal and salgrade.highsal

/*경리 부서에 근무하는 사원의 이름과 입사일 출력*/

select ename, hiredate
from employee a, department b
where a.dno = b.dno and dname = '경리부'

/*인천에서 근무하는 사원의 이름과 급여 출력*/

select ename, salary
from employee a, department b
where a.dno = b.dno and loc = '인천'

/*각 사원의 이름과 상관 이름 출력*/

select member.ename as [사원 이름], manager.ename as [상관 이름]
from employee member, employee manager
where member.manager = manager.eno


-- ANSI 조인 --
-- EMPLOYEE와 DEPARTMENT의 ANSI CROSS JOIN --
SELECT *
FROM EMPLOYEE CROSS JOIN DEPARTMENT

-- ANSI INNER JOIN --
-- 이문세 사원의 이름과 소속 부서 이름 출력 (ANSI 문법) --
SELECT ENAME, DNAME
FROM EMPLOYEE INNER JOIN DEPARTMENT
ON EMPLOYEE.DNO = DEPARTMENT.DNO
WHERE ENAME = '이문세'

-- ANSI OUTER JOIN --
SELECT E1.ENAME as '사원이름', E2.ENAME as '직속상관이름'
FROM EMPLOYEE E1 LEFT OUTER JOIN EMPLOYEE E2
ON E1.MANAGER = E2.ENO


SELECT DNO, DNAME INTO DEPT01
FROM DEPARTMENT
WHERE DNO IN(10, 20)

SELECT * 
FROM DEPT01

SELECT DNO, DNAME INTO DEPT02
FROM DEPARTMENT
WHERE DNO IN(10, 30)

SELECT * 
FROM DEPT02

/*inner join*/

select *
from dept01 inner join dept02
on dept01.dno = dept02.dno

/*left outer join*/

select *
from dept01 left outer join dept02
on dept01.dno = dept02.dno

/*right outer join*/

select *
from dept01 right outer join dept02
on dept01.dno = dept02.dno

/*full outer join*/

select *
from dept01 full outer join dept02
on dept01.dno = dept02.dno