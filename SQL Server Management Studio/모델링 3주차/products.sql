---products 테이블을 만들어 기본키 설정과 디폴트값을 설정
CREATE TABLE Products(
pcode varchar(20) CONSTRAINT PK_pcode PRIMARY KEY,
pname varchar(100) default '0',
price varchar(10) default '0'
)

---products 테이블 수정
ALTER TABLE Products
ADD pdate datetime NULL

---products 테이블에서 price의 크기를 varchar(20)으로 수정
ALTER TABLE Products
ALTER COLUMN price VARCHAR(20)

---products 테이블에서 pdate칼럼을 삭제
ALTER TABLE Products
DROP COLUMN pdate
S