/*�޿��� 500�̻��� ��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE SALARY>=500

/*10�� �μ��� �Ҽӵ� ����� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE DNO = 10

/*�̹��� ����� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE ENAME = '�̹���'

/*2005��1��1�� ������ �Ի��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE HIREDATE < '2005-01-01'

/*2005�� 1�� 1�� ���Ŀ� �Ի��� ����� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE HIREDATE > '2005-1-1'


