BEGIN TRAN

update department01
set dname = '��ȹ��'
where dno = 60

select * from department01

delete from department01
where dno =20

commit tran