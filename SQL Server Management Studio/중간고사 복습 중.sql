/*�޿��� 300������ ����� �����ȣ, ����̸�, �޿� ���*/

select eno, ename, salary
from EMPLOYEE
where salary <= 300

/*����̸��� "����ȣ"�� ����� �����ȣ, �̸�, �޿� ���*/

select eno, ename, salary
from EMPLOYEE
where ename = '����ȣ'

/*�޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ, �̸�, �޿� ��� �� ������ ���*/

select eno, ename, salary
from employee
where salary = 250 or salary = 300 or salary = 500

/*�޿��� 250�̰ų� 300�̰ų� 500�� ������� �����ȣ, �̸� �޿���� �� ������ �� ���*/

select eno, ename, salary
from EMPLOYEE
where salary in (250, 300, 500)

/*�޿��� 250�̰ų� 300�̰ų� 500�ƴ� ������� �����ȣ, �̸� �޿���� �� ������ ���*/

select eno, ename, salary
from employee
where salary != 250 and salary != 300 and salary != 500

select eno, ename, salary
from employee
where not salary = 250 and not salary = 300 and not salary = 500

select eno, ename, salary
from employee
where not(salary = 250 or salary = 300 or salary = 500)

/*�޿��� 250�̰ų� 300�̰ų� 500�ƴ� ������� �����ȣ, �̸� �޿���� �� ������ �� ���*/

select eno, ename, salary
from employee
where salary not in (250, 300, 500)

/*�޿��� 400���� 500�� ����� ��ȣ, �̸�, �޿� ��� �� ������ ���*/

select eno, ename, salary
from employee
where salary >= 400 and salary <= 500

/*�޿��� 400���� 500�� ����� ��ȣ, �̸�, �޿� ��� �� ������ �̻��*/

select eno, ename , salary
from employee
where salary between 400 and 500

/*����� �� �̸��� ������ �����ϴ� ����� ��ȣ, �̸� ���*/

select eno, ename
from employee
where ename like '��%'

/*�̸��� ���� �����ϴ� ������� ��� ���� ���9*/

select *
from EMPLOYEE
where ename like '%��%'

/*�̸��� ����° ���ڰ� ���� ����� ��� ���� ���*/

select *
from employee
where ename like '__��%'

/*Ŀ�̼��� NULL�� ������� ��� ���� ���*/

select *
from EMPLOYEE
where commission is null

/*Ŀ�̼��� NULL�� �ƴ� ������� ��� ���� ���*/

select *
from employee
where commission is not null

/*��� ������� ��ȣ, �̸�, �޿�, ����, Ŀ�̼��� ������ �������*/

select eno, ename, salary, salary*12 as ����, salary * 12 + isnull(commission, 0) as [Ŀ�̼��� ������ ����]
from employee


/*�޿��� ���� �޴� ������ ������� ��� ���� ���*/

select *
from employee
order by salary desc

/*�޿��� ���� �޴� ������ ������� ��� ���� ���*/

select *
from employee
order by salary asc

/*�ֱٿ� �Ի��� ������� ������� ������� ��� ���� ���*/

select *
from employee
order by hiredate desc

/*�޿��� ���� �޴� ������ ����ϵ� ���� �޿��� ��� �̸��� ö�ڰ� ���� �� ���*/

select *
from employee
order by salary desc, ename asc

/*����� ���� ������� ��� ���� ���*/

select *
from employee
where manager is null

/*�Ի����� ���� ������ ������� ��ȣ, �̸�, ����, �Ի��� ���*/

select eno, ename, job, hiredate
from employee
order by hiredate asc

/*�μ���ȣ�� ���� ������� ����ϵ� ���� �μ��� ��� �Ի����ڰ� �ֱ� ���ҷ� �μ���ȣ, �����ȣ, �̸�, ����, �Ի����� ���*/

select dno, eno, ename, job, hiredate
from employee
order by dno desc, hiredate desc

/*�޿��� ���� �޴� ��� 5���� ��� ���� ���*/

select top (5) *
from employee
order by salary desc

/*�޿��� ���� �޴� 30%���� ��� ��� ���� ���*/

select top(30) percent *
from employee
order by salary desc

/*�޿��� ���� �޴� 30%���� ����ϵ� ���� �����ͱ��� ��� ��� ���� ���*/

select top (30) percent with ties *
from employee
order by salary desc


/*������� ���� ���� ����ϱ�*/

select distinct job
from employee

/*������� �޿� �Ѿ� ���*/

select sum(salary) as [����޿� �Ѿ�]
from employee

/*������� Ŀ�̼� �Ѿ� ���*/

select sum(commission) as [Ŀ�̼� �Ѿ�]
from employee

/*������� �޿� ��� ���*/

select avg(salary) as [�޿� ���]
from employee

/*������� ���� ���� �޿��� ���� ���� �޿� ���*/

select max(salary)as [���� �޿�] , min(salary) as [���� �޿�]
from employee

/*����� �� �ִ� �޿��� �޴� ����� �̸��� �޿� ���*/

select top(1) ename, salary
from employee
order by salary desc

/*Ŀ�̼��� �޴� ������� �� ���*/

select count(commission) as [Ŀ�̼��� �޴� ��� ��]
from employee

/*��ü ����� ���� Ŀ�̼��� �޴� ����� �� ���*/

select count(eno) as [�� �����] , count(commission) as [Ŀ�̼��� �޴� ��� ��]
from employee

/*������� ������ ���� ���*/

select count(job) as [��� ������ ��]
from employee

/*������� ������ ���� ���� ���*/

select count(distinct job) as [������ ���� ����]
from employee

/*TEST ���̺��� AMOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ���� �ǳʶٱ�*/

select * ,
rank() over (order by amount desc) as ����
from test

/*TEST ���̺��� AMOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ���� �ǳʶ��� �ʱ�*/

select *,
dense_rank() over (order by amount desc) as ����
from test

/*TEST ���̺��� AMOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ��ġ�� �ʱ�*/

select *,
row_number() over (order by amount desc) as ����
from test

/*TEST ���̺��� ���� ������ 6�׷����� ���� �� �׷� ���� �ű��*/

select year, quarter, amount,
ntile(6) over (order by amount desc) as [����]
from test


/*TEST ���̺��� ���� ������ 5�׷����� ���� �� �׷� ���� �ű��*/

select year, quarter, amount,
ntile(5) over (order by amount desc) as [����]
from test

/*TEST ���̺��� �⵵���� �׷����� �׷쳻 �ǳ� �ٱ� ���� �ű��*/

select year, quarter, amount,
rank() over(partition by year order by amount desc) as ����
from test
/*320�� �غ���*/


/*�Ҽ� �μ��� ��� �޿� ���ϱ�*/

select dno, avg(salary) as [��� �޿�]
from employee
group by dno 

/*�Ҽ� �μ��� ��� �޿��� �μ���ȣ�� ���*/

select dno, avg(salary) as ��ձ޿�
from employee
group by dno 

/*�Ҽ� �μ��� �޿��Ѿװ� ��� �޿� ���*/

select dno, sum(salary) as �޿��Ѿ�, avg(salary) as ��ձ޿�
from employee
group by dno

/*�Ҽ� �μ��� �ִ� �޿��� �ּ� �޿� ���*/

select max(salary) as [�ִ� �޿�], min(salary) as [�ּ� �޿�]
from employee
group by dno 

/*�Ҽ� �μ��� ��� ���� Ŀ�̼� �޴� ��� �� ���ϱ�*/

select dno, sum(eno) as [��� ��], sum(commission) as [Ŀ�̼� �޴� ��� ��]
from employee
group by dno

/*�Ҽ� �μ��� �μ���ȣ, ��� �̸�, ��ձ޿� ���*/

select dno, avg(salary)
from employee
group by dno

/*�μ����� ��� �޿��� 500 �̻��� �μ���ȣ�� ��� �޿� ���*/

select dno, avg(salary) as [��� �޿�]
from employee
group by dno
having avg(salary) >= 500

/*�ִ�޿��� 500�� �ʰ��ϴ� �μ��� ���� �μ���ȣ �ִ�޿� �ּұ޿� ���*/

select dno, max(salary) as [�ִ� �޿�], min(salary) as [�ּ� �޿�]
from employee
group by dno
having max(salary) > 500

/*�μ��� �޿� �Ѿ� ���ϵ� �μ������� ���޺��� �޿� �Ѿ� ��� �μ��� �߰��հ� �����հ� ���*/

select dno, sum(salary) as [�޿��Ѿ�], job
from employee
group by dno , job with rollup

/*�μ��� �޿� �Ѿ� ���ϵ� �μ������� ���޺��� �޿� �Ѿ� ��� �μ����� ���޺� �߰��հ� �����հ� ���*/

select dno, sum(salary)as [�޿��Ѿ�], job
from employee
group by dno, job with cube
order by dno desc, job desc

/*�� �μ���ȣ �ش��ϴ� �μ����� �μ���ȣ�� �Բ� ���*/

select ename , dno,
case when dno = 10 then '�渮��'
   when dno = 20 then '�λ��' 
   when dno = 30 then '������'
end as dname
from employee

 /*�μ��� �޿� �Ѿ��� ���ϵ� �μ� ������ �ٽ� ���޺��� �޿� �Ѿ� ���ϱ�
�׸��� �μ��� ���տ� ���� �߰� �հ� �� ��� ��ü�� ���� �޿� �Ѿ� ���ϱ�!*/

select dno, job, sum(salary) as [�޿� �Ѿ�]
from employee
group by dno, job with rollup

/*���� �ֱٿ� �Ի��� ����� �Ի��ϰ� �Ի����� ���� ������ ����� �Ի����� ���*/

select max(hiredate) as [���� ���], min(hiredate) as [������ ���]
from employee

/*30�� �μ� �Ҽ� ��� �� Ŀ�̼� �޴� ����� �� ���*/

select dno, count(commission) as [Ŀ�̼� �޴� ��� ��]
from employee
group by dno
having dno = 30

select dno,  count(commission) as [Ŀ�̼� �޴� ��� ��]
from employee
where dno = 30
group by dno

/*�μ����� �� �޿� �հ踦 �μ���ȣ�� �Բ� ���*/

select dno, sum(salary) as [�޿� �հ�]
from employee
group by dno