---products ���̺��� ����� �⺻Ű ������ ����Ʈ���� ����
CREATE TABLE Products(
pcode varchar(20) CONSTRAINT PK_pcode PRIMARY KEY,
pname varchar(100) default '0',
price varchar(10) default '0'
)

---products ���̺� ����
ALTER TABLE Products
ADD pdate datetime NULL

---products ���̺��� price�� ũ�⸦ varchar(20)���� ����
ALTER TABLE Products
ALTER COLUMN price VARCHAR(20)

---products ���̺��� pdateĮ���� ����
ALTER TABLE Products
DROP COLUMN pdate
S