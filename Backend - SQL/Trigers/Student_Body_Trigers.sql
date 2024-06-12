use NasCon;

--creating a log table that keep records of Data Manipulation on Student_Body Table

Drop table log_Student_Body;
Create Table log_Student_Body (id int Primary key identity,info varchar(max));

--trigger for Insertion Student_Body table

create trigger tr_tblstudent_body_FORINSERT
on dbo.Student_Body
after insert
AS
Begin
	Declare @Roll_No varchar(7)
	select * from Student_Body;
	select @Roll_No=Roll_No from inserted
	insert into log_Student_Body values('New Student_Body having id  : '+@Roll_No+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end

insert into Student_Body values('i201234','Dummy1','20');
insert into Student_Body values('i202234','Dummy2','20');
insert into Student_Body values('i203234','Dummy3','20');


select * from Student_Body;
select * from log_Student_Body;

--trigger for Deletion Student_Body table

create trigger tr_tblStudent_Body_FORDELETE
on Student_Body
after delete
AS
Begin
	Declare @Roll_No varchar(7)
	select * from Student_Body;
	select @Roll_No=Roll_No from deleted
	insert into log_Student_Body values('New Student_Body having id  : '+@Roll_No+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Student_Body where Roll_No='i201234';
select * from log_Student_Body;

--trigger for Updation Student_Body table

create trigger tr_tblStudent_Body_FORUPDATE
on dbo.Student_Body
instead of update
AS
Begin
	print ' you are not eligible to update record'
end

update  dbo.Student_Body set Batch='21' where Roll_No='i202234';
select* from Student_Body;
select * from log_Student_Body;

