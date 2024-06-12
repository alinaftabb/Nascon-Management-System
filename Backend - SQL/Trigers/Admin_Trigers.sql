use NasCon;

--creating a log table that keep records of Data Manipulation on Admin Table

Drop table log_Admin;
Create Table log_Admin (id int Primary key identity,info varchar(max));

--trigger for Insertion admin table

create trigger tr_tbladmin_FORINSERT
on Admin
after insert
AS
Begin
	Declare @username varchar(30)
	select * from inserted
	select @username=username from inserted
	insert into log_Admin values('New User: '+@username+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end
insert into Admin values('duname','dupas','du name');
select * from log_Admin;

--trigger for Deletion admin table

create trigger tr_tbladmin_FORDELETE
on Admin
after delete
AS
Begin
	Declare @username varchar(30)
	select * from deleted
	select @username=username from deleted
	insert into log_Admin values('User: '+@username+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Admin where username='dummyusername';
select * from log_Admin;

--trigger for Updation admin table

create trigger tr_tbladmin_FORUPDATE
on Admin
after update
AS
Begin
	Declare @oldPassword varchar(30)
	Declare @newPassword varchar(30)
	Declare @Name varchar(30)
	select @newPassword=password from inserted
	select @oldPassword=password from deleted
	select @Name=Name from inserted
	insert into log_Admin values('The user '+@Name+' has changed password to  : '+@newPassword+' from : '+@oldPassword+' at: '+cast(GETDATE() AS VARCHAR(60)))
end
update  Admin set password='newPassword' where Name='du name';
select * from log_Admin;
