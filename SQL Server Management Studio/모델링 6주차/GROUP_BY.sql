SELECT COUNT(JOB) AS '������� ������ ��'
FROM EMPLOYEE

SELECT COUNT(DISTINCT JOB) AS '������� ������ ������ ��'
FROM EMPLOYEE


/*�Ҽ� �μ��� ��� �޿� ���ϱ�*/
SELECT AVG(SALARY) AS '�μ��� ��� �޿�'
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� ��� �޿��� �μ���ȣ�� ���*/
SELECT AVG(SALARY) AS '�μ��� ��� �޿�' , DNO
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� �޿��Ѿװ� ��� �޿� ���*/

SELECT SUM(SALARY) AS '�μ��� �޿��Ѿ�' , AVG(SALARY) AS '�μ��� ��� �޿�'
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� �ִ� �޿��� �ּ� �޿� ���*/

SELECT MAX(SALARY) AS '�μ��� �ִ� �޿�' , MIN(SALARY) AS '�μ��� �ּ� �޿�'
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� ��� ���� Ŀ�̼� �޴� ��� �� ���ϱ�*/

SELECT COUNT(ENO) AS '�μ��� �����' , COUNT(COMMISSION) AS '�μ��� Ŀ�̼� �޴� ��� ��'
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� �μ���ȣ, ��� �̸�, ��ձ޿� ���*/

SELECT DNO, AVG(SALARY) AS '��� �޿�'					/*���� �Լ��� group by ���� ���� Į���� select ��Ͽ��� ��� �Ұ�*/
FROM EMPLOYEE
GROUP BY DNO


/*Having ����*/

/*�μ����� ��� �޿��� 500 �̻��� �μ���ȣ�� ��� �޿� ���*/

SELECT DNO, AVG(SALARY) AS '��� �޿�'
FROM EMPLOYEE
GROUP BY DNO
HAVING AVG(SALARY) >= 500

/*�ִ�޿��� 500�� �ʰ��ϴ� �μ��� ���� �μ���ȣ �ִ�޿� �ּұ޿� ���*/

SELECT DNO, MAX(SALARY) AS [�ִ� �޿�], MIN(SALARY) AS [�ּұ޿�]
FROM EMPLOYEE
GROUP BY DNO
HAVING MAX(SALARY) > 500

/*ROLL UP*/

/*�μ��� �޿� �Ѿ� ���ϵ� �μ������� ���޺��� �޿� �Ѿ� ��� �μ��� �߰��հ� �����հ� ���*/

SELECT DNO, JOB, SUM(SALARY) [�޿� �Ѿ�]
FROM EMPLOYEE
GROUP BY DNO , JOB WITH ROLLUP 


/*�μ��� �޿� �Ѿ� ���ϵ� �μ������� ���޺��� �޿� �Ѿ� ��� �μ����� ���޺� �߰��հ� �����հ� ���*/

SELECT DNO, JOB, SUM(SALARY)[�޿��Ѿ�]
FROM EMPLOYEE
GROUP BY DNO, JOB WITH CUBE
ORDER BY DNO DESC

/*CASE*/

/*�� �μ���ȣ �ش��ϴ� �μ����� �μ���ȣ�� �Բ� ���*/

SELECT DNO, ENAME,
 CASE WHEN DNO = 10 THEN '�渮��'
	  WHEN DNO = 20 THEN '�λ��'
	  WHEN DNO = 30 THEN '������'
	  ELSE'�����'
 END AS DNAME
 FROM EMPLOYEE

 /*�μ��� �޿� �Ѿ��� ���ϵ� �μ� ������ �ٽ� ���޺��� �޿� �Ѿ� ���ϱ�
�׸��� �μ��� ���տ� ���� �߰� �հ� �� ��� ��ü�� ���� �޿� �Ѿ� ���ϱ�!*/

SELECT DNO, JOB, SUM(SALARY) AS �޿��Ѿ�
FROM EMPLOYEE
GROUP BY DNO, JOB
ORDER BY DNO

SELECT DNO, JOB, SUM(SALARY) [�޿� �Ѿ�]
FROM EMPLOYEE
GROUP BY DNO, JOB WITH ROLLUP

/*���� �ֱٿ� �Ի��� ����� �Ի��ϰ� �Ի����� ���� ������ ����� �Ի����� ���*/

SELECT MAX(HIREDATE) AS '�ֱ� �Ի��� ���', MIN(HIREDATE) AS '������ ���'
FROM EMPLOYEE

/*30�� �μ� �Ҽ� ��� �� Ŀ�̼� �޴� ����� �� ���*/

SELECT DNO, COUNT(COMMISSION) [Ŀ�̼� �޴� ����� ��]
FROM EMPLOYEE
GROUP BY DNO
HAVING DNO = 30

SELECT DNO, COUNT(COMMISSION) [Ŀ�̼� �޴� ����� ��]
FROM EMPLOYEE
WHERE DNO = 30
GROUP BY DNO


/*�μ����� �� �޿� �հ踦 �μ���ȣ�� �Բ� ���*/

SELECT DNO, SUM(SALARY) [�޿� �հ�]
FROM EMPLOYEE
GROUP BY DNO