USE testdb
GO

----tempdb �����ͺ��̽��� memberTest ���̺� ���� �� name Į�� ����.

CREATE TABLE memberTest(
id INT IDENTITY(1,1),
name VARCHAR(20)
)


---���̺� �̸��� �ִ´�--
INSERT memberTest VALUES('�賲��')
INSERT memberTest VALUES('���ֿ�')
INSERT memberTest VALUES('Ź�ѿ�')

---���̺��� ��� �ο츦 �����ϱ� ���� ��ɾ�
TRUNCATE TABLE memberTest

---���̺��� ���� ��ü�� ��� ���� �ϴ°�
DROP TABLE memberTest