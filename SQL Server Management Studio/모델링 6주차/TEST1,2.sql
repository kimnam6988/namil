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

/*SELECT 가져올 컬럼명, [열로 병환시킬 행]
FROM 테이블
PIVOT (집계함수(검색할 열)
FOR 크로스탭의 기준이 되는 열
IN([변환시킬행])) AS 피벗 테이블의 별칭*/

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


/*TEST 테이블에서 AOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 다음 순위 건너뛰기*/

SELECT AMOUNT , RANK() OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 AOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 다음 순위 건너뛰지 않기*/

SELECT AMOUNT , DENSE_RANK() OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 AOUNT가 많은 순으로 순위 매기기 단, 같은 순위 있을 경우 순위 겹치지 않기*/

SELECT YEAR, QUARTER, AMOUNT , ROW_NUMBER() OVER (ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 많은 순으로 6그룹으로 나눈 후 그룹 순위 매기기*/

SELECT AMOUNT, NTILE(6) OVER(ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 많은 순으로 5그룹으로 나눈 후 그룹 순위 매기기*/

SELECT AMOUNT, NTILE(5) OVER(ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*TEST 테이블에서 년도별로 그룹지어 그룹내 건너 뛰기 순위 매기기*/

SELECT AMOUNT , QUARTER, AMOUNT,
RANK() OVER (PARTITION BY YEAR ORDER BY AMOUNT DESC) AS 순위
FROM TEST

/*320쪽 해보기*/