BEGIN TRAN
update department01
set dno = 100
where dno = 80

select * from department01

delete from department01
select * from department01
ROLLBACK TRAN

