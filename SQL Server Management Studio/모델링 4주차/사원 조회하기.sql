/*P.220*/
/*������̺��� ��� ����� ���� ��ȸ*/
SELECT *
FROM EMPLOYEE

/*������̺��� ��� ����� ����� �̸� ��ȸ*/

SELECT ENO,ENAME
FROM EMPLOYEE

/*��� ����� �̸� �޿� ���� ��ȸ*/
SELECT ENAME, SALARY, SALARY*12 as ����
FROM EMPLOYEE

/*��� ����� �̸�, �޿�, Ŀ�̼������� ���� ��ȸ*/
SELECT ENAME,SALARY,SALARY*12+ COMMISSION 
FROM EMPLOYEE

SELECT ENAME,SALARY, JOB, DNO, COMMISSION, SALARY*12+ISNULL(COMMISSION,0) "Ŀ�̼� ���� ����"
FROM EMPLOYEE

/*��� ������� �Ҽӵ� �μ���ȣ ��ȸ*/
SELECT DNO
FROM EMPLOYEE

/*�ߺ� ����*/
SELECT DISTINCT DNO
FROM EMPLOYEE

/*��� �̸��� �޿��� �Ի����� ���*/

SELECT ENAME, SALARY, 4HIREDATE
FROM EMPLOYEE


/*��� �μ���ȣ�� �μ��̸� ���*/

SELECT DNO, DNAME
FROM DEPARTMENT

/*����� ��� ���� ���� ���*/

SELECT DISTINCT JOB
FROM EMPLOYEE


