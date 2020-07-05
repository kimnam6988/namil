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
ORDER BY DNO , HIREDATE DESC

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

SELECT SUM(SALARY) AS '�޿� ���'
FROM EMPLOYEE

/*������� Ŀ�̼� �Ѿ� ���*/

SELECT SUM(COMMISSION) AS 'Ŀ�̼� �Ѿ�'
FROM EMPLOYEE

/*������� �޿� ��� ���*/

SELECT AVG(SALARY) AS '�޿� ���'
FROM EMPLOYEE

/*������� ���� ���� �޿��� ���� ���� �޿� ���*/

SELECT MAX(SALARY) AS '���� ���� �޿�' , MIN(SALARY) AS '���� ���� �޿�'
FROM EMPLOYEE

/*����� �� �ִ� �޿��� �޴� ����� �̸��� �޿� ���*/

SELECT TOP(1) ENAME, SALARY
FROM EMPLOYEE
ORDER BY SALARY DESC

/*Ŀ�̼��� �޴� ������� �� ���*/

SELECT COUNT(COMMISSION) AS 'Ŀ�̼��� �޴� ������� ��'
FROM EMPLOYEE

/*��ü ����� ���� Ŀ�̼��� �޴� ����� �� ���*/

SELECT COUNT(*) AS '��ü ����� ��' , COUNT(COMMISSION) AS 'Ŀ�̼��� �޴� ����� ��'
FROM EMPLOYEE

/*������� ������ ���� ���*/

SELECT COUNT(JOB) AS '������� ������ ����' 
FROM EMPLOYEE

/*������� ������ ���� ���� ���*/

SELECT COUNT(DISTINCT JOB) AS '������� ���� ���� ����)'
FROM EMPLOYEE