/*% : 문자가 없거나, 하나 이상의 문자가 어떤 값이 와도 상관없다
 _ : 하나의 문자가 어던 값이 와도 상관없다*/

/*사원 이름이 '이'로 시작하는 사원 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '이%'

/*사원 이름이 '성'자가 들어가는 사원 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%성%'

/*사원 이름이 '성'자로 끝나는 사원 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%성'

/*사원 이름의 세번째 글자가 '성'인 사원 모든 정보 출력*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '__성%'