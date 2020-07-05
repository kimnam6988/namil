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
WHERE SALARY IN (250, 300, 500)

/*�޿��� 250�̰ų� 300�̰ų� 500�ƴ� ������� �����ȣ, �̸� �޿���� �� ������ ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY != 250 AND SALARY != 300 AND SALARY != 500

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT(SALARY = 250 OR SALARY = 300 OR SALARY = 500)

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE NOT SALARY = 250 AND NOT SALARY = 300 AND NOT SALARY =500

/*�޿��� 250�̰ų� 300�̰ų� 500�ƴ� ������� �����ȣ, �̸� �޿���� �� ������ �� ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY NOT IN( 250, 300, 500)

/*�޿��� 400���� 500�� ����� ��ȣ, �̸�, �޿� ��� �� ������ ���*/

SELECT ENO, ENAME, SALARY
FROM EMPLOYEE
WHERE 400 <= SALARY AND SALARY <= 500 


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

SELECT ENO, ENAME, SALARY, SALARY * 12 AS ����, SALARY*12+ISNULL(COMMISSION, 0) AS 'Ŀ�̼��� ������ ����', COMMISSION
FROM EMPLOYEE 

