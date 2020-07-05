create table test
(year int,
quarter int,
amount decimal(2,1)
)
go

insert into test values(2009, 1, 1.1)
insert into test values(2009, 2, 1.2)
insert into test values(2009, 3, 1.3)
insert into test values(2009, 4, 1.4)
insert into test values(2010, 1, 2.1)
insert into test values(2010, 2, 2.2)
insert into test values(2010, 3, 2.3)
insert into test values(2010, 4, 2.4)
insert into test values(2011, 1, 3.1)
insert into test values(2011, 2, 3.2)
insert into test values(2011, 3, 3.3)
insert into test values(2011, 4, 3.4)
insert into test values(2012, 1, 4.1)
insert into test values(2012, 2, 4.2)
insert into test values(2012, 3, 4.3)
insert into test values(2012, 4, 4.4)
go

SELECT *
FROM TEST

/*SELECT ������ �÷���, [���� ��ȯ��ų ��]
FROM ���̺�
PIVOT (�����Լ�(�˻��� ��)
FOR ũ�ν����� ������ �Ǵ� ��
IN([��ȯ��ų��])) AS �ǹ� ���̺��� ��Ī*/

SELECT YEAR,[1],[2],[3],[4]
FROM TEST
PIVOT(SUM(AMOUNT)
FOR QUARTER
IN([1],[2],[3],[4])) AS NAMIL


/* UNPIVOT */
CREATE TABLE TEST2
(
   YEAR INT,
   Q1 DECIMAL(2,1),
   Q2 DECIMAL(2,1),
   Q3 DECIMAL(2,1),
   Q4 DECIMAL(2,1),
)

INSERT INTO TEST2 VALUES (2009, 1.1, 1.2, 1.3, 1.4)
INSERT INTO TEST2 VALUES (2010, 2.1, 2.2, 2.3, 2.4)
INSERT INTO TEST2 VALUES (2011, 2.4, 2.4, 2.2, 2.3)

SELECT *
FROM TEST2

SELECT YEAR, QUARTER, AMOUNT
FROM TEST2
UNPIVOT(AMOUNT 
FOR QUARTER
IN([Q1],[Q2],[Q3],[Q4])) AS UNPVT


/*TEST ���̺��� AOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ���� �ǳʶٱ�*/

SELECT AMOUNT , RANK() OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� AOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ���� �ǳʶ��� �ʱ�*/

SELECT AMOUNT , DENSE_RANK() OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� AOUNT�� ���� ������ ���� �ű�� ��, ���� ���� ���� ��� ���� ��ġ�� �ʱ�*/

SELECT YEAR, QUARTER, AMOUNT , ROW_NUMBER() OVER (ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� ���� ������ 6�׷����� ���� �� �׷� ���� �ű��*/

SELECT AMOUNT, NTILE(6) OVER(ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� ���� ������ 5�׷����� ���� �� �׷� ���� �ű��*/

SELECT AMOUNT, NTILE(5) OVER(ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*TEST ���̺��� �⵵���� �׷����� �׷쳻 �ǳ� �ٱ� ���� �ű��*/

SELECT AMOUNT , QUARTER, AMOUNT,
RANK() OVER (PARTITION BY YEAR ORDER BY AMOUNT DESC) AS ����
FROM TEST

/*320�� �غ���*/