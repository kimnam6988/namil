USE testdb
GO

----tempdb 데이터베이스에 memberTest 테이블 생성 후 name 칼럼 삽입.

CREATE TABLE memberTest(
id INT IDENTITY(1,1),
name VARCHAR(20)
)


---테이블에 이름을 넣는다--
INSERT memberTest VALUES('김남일')
INSERT memberTest VALUES('정주완')
INSERT memberTest VALUES('탁한열')

---테이블의 모든 로우를 제거하기 위한 명령어
TRUNCATE TABLE memberTest

---테이블의 구조 자체를 모두 삭제 하는것
DROP TABLE memberTest