/*10�� �μ� �Ҽӻ���� �� ������ ������ ����� �̸�, �μ���ȣ, ������ȸ*/

SELECT ENAME,DNO,JOB
FROM EMPLOYEE
WHERE JOB='����' AND DNO = 10

/*10�� �μ� �Ҽӵ� ����̰ų� ������ ������ ����� �̸�, �μ���ȣ, ������ȸ*/

SELECT ENAME,DNO,JOB
FROM EMPLOYEE
WHERE JOB='����' OR DNO = 10

/*10�� �μ��� �Ҽӵ� ����� ������ ����� �̸�, �μ���ȣ, ������ȸ*/

SELECT ENAME,DNO,JOB
FROM EMPLOYEE
WHERE NOT DNO = 10

/*�޿��� 400�̻� 500������ ��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE SALARY>=400 AND SALARY <=500

/*�޿��� 400�̸��̰ų� 500�ʰ��� ��� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE SALARY < 400 OR SALARY > 500

/*Ŀ�̼��� 80�̰ų� 100�̰ų� 200�� ����� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE COMMISSION = 80 OR COMMISSION  = 100 OR COMMISSION = 200

SELECT*
FROM EMPLOYEE
WHERE COMMISSION IN (80,100,200)

/*Ŀ�̼��� 80,100,200�� �ƴ� ����� ��� ���� ���*/

SELECT *
FROM EMPLOYEE
WHERE NOT COMMISSION = 80 AND NOT COMMISSION = 100 AND NOT COMMISSION = 200

SELECT *
FROM EMPLOYEE
WHERE NOT(COMMISSION =80 OR COMMISSION = 100 OR COMMISSION = 200)

SELECT *
FROM EMPLOYEE
WHERE COMMISSION NOT IN(80,100,200)
