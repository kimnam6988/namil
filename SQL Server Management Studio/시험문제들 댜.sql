/*�޿��� 300������ ����� �����ȣ, ����̸�, �޿� ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY <= 300

/*����̸��� "����ȣ"�� ����� �����ȣ, �̸�, �޿� ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE ENAME = '����ȣ'

/*�޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ, �̸�, �޿� ��� �� ������ ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY = 250 OR SALARY = 300 OR SALARY = 500

/*�޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ, �̸� �޿���� �� ������ �� ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY IN (250,300,500)

/*�޿��� 250�̰ų� 300�̰ų� 500�ƴ� ������� �����ȣ, �̸� �޿���� �� ������ ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY != 250 AND SALARY != 300 AND SALARY != 500

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT (SALARY = 250 OR SALARY = 300 OR SALARY = 500)

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT SALARY = 250 AND NOT SALARY = 300 AND NOT SALARY = 500

/*�޿��� 250�̰ų� 300�̰ų� 500�ƴ� ������� �����ȣ, �̸� �޿���� �� ������ �� ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY NOT IN (250,300,500)
/*�޿��� 400���� 500�� ����� ��ȣ, �̸�, �޿� ��� �� ������ ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY>=400 AND SALARY <= 500

/*�޿��� 400���� 500�� ����� ��ȣ, �̸�, �޿� ��� �� ������ �̻��*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY BETWEEN 400 AND 500

/*����� �� �̸��� ������ �����ϴ� ����� ��ȣ, �̸� ���*/

SELECT ENO, ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '��%'

/*�̸��� ���� �����ϴ� ������� ��� ���� ���9*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '%��%'

/*�̸��� ����° ���ڰ� ���� ����� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE ENAME LIKE '__��%'

/*Ŀ�̼��� NULL�� ������� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE COMMISSION IS NULL

/*Ŀ�̼��� NULL�� �ƴ� ������� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL

/*��� ������� ��ȣ, �̸�, �޿�, ����, Ŀ�̼��� ������ �������*/

SELECT ENO, ENAME, SALARY, SALARY * 12 AS '����', SALARY * 12 + ISNULL(COMMISSION,0) AS ' Ŀ�̼��� ������ ����'
FROM EMPLOYEE

/*�޿��� ���� �޴� ������ ������� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
ORDER BY SALARY DESC

/*�޿��� ���� �޴� ������ ������� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
ORDER BY SALARY ASC

/*�ֱٿ� �Ի��� ������� ������� ������� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
ORDER BY HIREDATE DESC

/*�޿��� ���� �޴� ������ ����ϵ� ���� �޿��� ��� �̸��� ö�ڰ� ���� �� ���*/

SELECT *
FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC

/*����� ���� ������� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE MANAGER IS NULL

/*�Ի����� ���� ������ ������� ��ȣ, �̸�, ����, �Ի��� ���*/

SELECT ENO, ENAME, JOB, HIREDATE
FROM EMPLOYEE
ORDER BY HIREDATE ASC

/*�μ���ȣ�� ���� ������� ����ϵ� ���� �μ��� ��� �Ի����ڰ� �ֱ� ���ҷ� �μ���ȣ, �����ȣ, �̸�, ����, �Ի����� ���*/

SELECT DNO, ENO, ENAME, JOB, HIREDATE
FROM EMPLOYEE
ORDER BY DNO ASC, HIREDATE DESC

/*�޿��� ���� �޴� ��� 5���� ��� ���� ���*/

SELECT TOP(5) *
FROM EMPLOYEE
ORDER BY SALARY DESC

/*�޿��� ���� �޴� 30%���� ��� ��� ���� ���*/

SELECT TOP(30) PERCENT *
FROM EMPLOYEE
ORDER BY SALARY DESC


/*�޿��� ���� �޴� 30%���� ����ϵ� ���� �����ͱ��� ��� ��� ���� ���*/

SELECT TOP(30) PERCENT WITH TIES *
FROM EMPLOYEE
ORDER BY SALARY DESC

/*������� ���� ���� ����ϱ�*/

SELECT DISTINCT JOB
FROM EMPLOYEE


/*������� �޿� �Ѿ� ���*/

SELECT SUM(SALARY) AS '�޿� �Ѿ�'
FROM EMPLOYEE

/*������� Ŀ�̼� �Ѿ� ���*/

SELECT SUM(COMMISSION) AS 'Ŀ�̼� �Ѿ�'
FROM EMPLOYEE


/*������� �޿� ��� ���*/

SELECT AVG(SALARY) AS '�޿� ���'
FROM EMPLOYEE

/*������� ���� ���� �޿��� ���� ���� �޿� ���*/

SELECT MAX(SALARY) AS '���� ���� �޿�' , MIN(SALARY) '���� ���� �޿�'
FROM EMPLOYEE

/*����� �� �ִ� �޿��� �޴� ����� �̸��� �޿� ���*/

SELECT TOP(1) ENAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY DESC

/*Ŀ�̼��� �޴� ������� �� ���*/

SELECT COUNT(COMMISSION) AS 'Ŀ�̼��� �޴� ������� ��'
FROM EMPLOYEE

/*��ü ����� ���� Ŀ�̼��� �޴� ����� �� ���*/

SELECT COUNT(*) AS '����� ��' , COUNT(COMMISSION) 'Ŀ�̼��� �޴� ����� ��'
FROM EMPLOYEE

/*������� ������ ���� ���*/

SELECT COUNT(JOB) AS '������� ������ ����'
FROM EMPLOYEE

/*������� ������ ���� ���� ���*/

SELECT COUNT(DISTINCT JOB) AS '������� ������ ����'
FROM EMPLOYEE