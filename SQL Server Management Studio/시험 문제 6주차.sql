/*�Ҽ� �μ��� ��� �޿� ���ϱ�*/

SELECT AVG(SALARY) AS [��� �޿�]
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� ��� �޿��� �μ���ȣ�� ���*/

SELECT DNO, AVG(SALARY) AS [��� �޿�]
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� �޿��Ѿװ� ��� �޿� ���*/

SELECT SUM(SALARY) AS [�޿� �Ѿ�], AVG(SALARY) AS [��� �޿�]
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� �ִ� �޿��� �ּ� �޿� ���*/

SELECT MAX(SALARY) AS [�ִ�޿�], MIN(SALARY) AS [�ּұ޿�]
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� ��� ���� Ŀ�̼� �޴� ��� �� ���ϱ�*/

SELECT COUNT(ENO) AS [��� ��] , COUNT(COMMISSION) AS [Ŀ�̼� �޴� ��� ��]
FROM EMPLOYEE
GROUP BY DNO

/*�Ҽ� �μ��� �μ���ȣ, ��� �̸�, ��ձ޿� ���*/					/*��� �̸��� �׷���� ���� ���Ե��� ���� ���� �Լ��̹Ƿ� ����*/

select dno, avg(salary) as [��� �޿�]
from employee
group by dno

/*�μ����� ��� �޿��� 500 �̻��� �μ���ȣ�� ��� �޿� ���*/

select dno, avg(salary) as [��� �޿�]
from employee
group by dno
having avg(salary) >= 500

/*�ִ�޿��� 500�� �ʰ��ϴ� �μ��� ���� �μ���ȣ �ִ�޿� �ּұ޿� ���*/

select dno, max(salary) as [�ִ�޿�], min(salary) as [�ּұ޿�]
from employee
group by dno
having max(salary) > 500

/*�μ��� �޿� �Ѿ� ���ϵ� �μ������� ���޺��� �޿� �Ѿ� ��� �μ��� �߰��հ� �����հ� ���*/

select dno, job, sum(salary) as[�޿��Ѿ�]
from employee
group by dno, job
order by dno

/*�μ��� �޿� �Ѿ� ���ϵ� �μ������� ���޺��� �޿� �Ѿ� ��� �μ����� ���޺� �߰��հ� �����հ� ���*/

select dno, job, sum(salary) as [�޿� �Ѿ�]
from employee
group by dno ,job with rollup

select dno, job, sum(salary) as [�޿��Ѿ�]
from employee
group by dno, job with cube
order by dno desc, job desc

/*�� �μ���ȣ �ش��ϴ� �μ����� �μ���ȣ�� �Բ� ���*/

select ename, dno,
case when dno = 10 then '�渮��'
	 when dno = 20 then '�λ��'
	 when dno = 30 then '������'
	 when dno = 40 then '�����'
	 end as dname
from employee

 /*�μ��� �޿� �Ѿ��� ���ϵ� �μ� ������ �ٽ� ���޺��� �޿� �Ѿ� ���ϱ�
�׸��� �μ��� ���տ� ���� �߰� �հ� �� ��� ��ü�� ���� �޿� �Ѿ� ���ϱ�!*/
SELECT DNO, JOB, SUM(SALARY) [�޿� �Ѿ�]
FROM EMPLOYEE
GROUP BY DNO, JOB WITH ROLLUP



/*���� �ֱٿ� �Ի��� ����� �Ի��ϰ� �Ի����� ���� ������ ����� �Ի����� ���*/

select max(hiredate) as [���� ���], min(hiredate) as [������ ���]
from EMPLOYEE


/*30�� �μ� �Ҽ� ��� �� Ŀ�̼� �޴� ����� �� ���*/

select dno, count(commission) as 'Ŀ�̼� �޴� ����� ��'
from EMPLOYEE
group by dno
having dno = 30

/*�μ����� �� �޿� �հ踦 �μ���ȣ�� �Բ� ���*/

select dno, sum(salary) as [�޿� �հ�]
from EMPLOYEE
group by dno

/*SELECT ������ �÷���, [���� ��ȯ��ų ��]
FROM ���̺�
PIVOT (�����Լ�(�˻��� ��)
FOR ũ�ν����� ������ �Ǵ� ��
IN([��ȯ��ų��])) AS �ǹ� ���̺��� ��Ī*/

select year,[1],[2],[3],[4]
from test
pivot (sum(amount)
for quarter
in ([1],[2],[3],[4])) as melong

select year, [1],[2],[3],[4]
from test
pivot (sum(amount)
for quarter
in([1],[2],[3],[4])) as sksksk
/* UNPIVOT */

select year, quarter, amount
from TEST2
unpivot (amount
for quarter
in ([q1],[q2],[q3],[q4])) as menon

/*TEST ���̺��� AMOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ���� �ǳʶٱ�*/

SELECT YEAR, QUARTER, AMOUNT, RANK() OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� AMOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ���� �ǳʶ��� �ʱ�*/

SELECT YEAR, QUARTER, AMOUNT,DENSE_RANK() OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� AMOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ��ġ�� �ʱ�*/

SELECT YEAR, QUARTER, AMOUNT, ROW_NUMBER() OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� ���� ������ 6�׷����� ���� �� �׷� ���� �ű��*/

SELECT YEAR, QUARTER, AMOUNT,  NTILE (6) OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� ���� ������ 5�׷����� ���� �� �׷� ���� �ű��*/

SELECT YEAR, QUARTER, AMOUNT ,NTILE(5) OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� �⵵���� �׷����� �׷쳻 �ǳ� �ٱ� ���� �ű��*/

SELECT YEAR, QUARTER, AMOUNT, RANK() OVER (PARTITION BY YEAR ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*320�� �غ���*/