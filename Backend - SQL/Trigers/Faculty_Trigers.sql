use NasCon;

--creating a log table that keep records of Data Manipulation on Faculty_Mentor Table

Drop table log_Faculty_Mentor;
Create Table log_Faculty_Mentor (id int Primary key identity,info varchar(max));
--trigger for Insertion Faculty_Mentor table

create trigger tr_tblfacultymentor_FORINSERT
on dbo.Faculty_Mentor
after insert
AS
Begin
	Declare @username varchar(20)
	select * from inserted
	select @username=username from inserted
	insert into log_Faculty_Mentor values('New User: '+@username+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end
insert into Faculty_Mentor values('user.name','dupas','du name','AAAA','Social');
insert into Faculty_Mentor values('user.name','dupas','du name','BBBB','Social');
select * from log_Faculty_Mentor;

--trigger for Deletion Faculty_Mentor table

create trigger tr_tblFaculty_Mentor_FORDELETE
on Faculty_Mentor
after delete
AS
Begin
	Declare @username varchar(20)
	select * from deleted
	select @username=username from deleted
	insert into log_Faculty_Mentor values('User: '+@username+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Faculty_Mentor where Emp_ID='AAAA';
select * from log_Faculty_Mentor;

--trigger for Updation Faculty_Mentor table

create trigger tr_tblFaculty_Mentor_FORUPDATE
on Faculty_Mentor
after update
AS
Begin
	Declare @oldPassword varchar(30)
	Declare @newPassword varchar(30)
	Declare @Name varchar(30)
	select @newPassword=password from inserted
	select @oldPassword=password from deleted
	select @Name=Name from inserted
	insert into log_Faculty_Mentor values('The user '+@Name+' has changed password to  : '+@newPassword+' from : '+@oldPassword+' at: '+cast(GETDATE() AS VARCHAR(60)))
end
update  Faculty_Mentor set password='newPassword' where Name='du name';
select * from log_Faculty_Mentor;
