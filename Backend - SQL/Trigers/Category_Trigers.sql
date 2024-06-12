use NasCon;

--creating a log table that keep records of Data Manipulation on Category Table

Drop table log_Category;
Create Table log_Category (id int Primary key identity,info varchar(max));

--trigger for Insertion admin table

create trigger tr_tblCategory_FORINSERT
on Category
after insert
AS
Begin
	Declare @Category varchar(15)
	select * from inserted
	select @Category=Category from inserted
	insert into log_Category values('New Category: '+@Category+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end
insert into Category values('EE');
insert into Category values('CS');
select * from log_Category;

--trigger for Deletion Category table

create trigger tr_tblcategory_FORDELETE
on Category
after delete
AS
Begin
	Declare @Category varchar(15)
	select * from deleted
	select @Category=Category from deleted
	insert into log_Category values('Category: '+@Category+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Category where Category='CS';
select * from log_Category;

--trigger for Updation Category table

create trigger tr_tblcategory_FORUPDATE
on dbo.Category
after update
AS
Begin
	Declare @Category varchar(15)
	Declare @newCaltegory varchar(15)
	Declare @oldCaltegory varchar(15)
			select @newCaltegory=Category from inserted
			select @oldCaltegory=Category from deleted
			select @Category=Category from inserted
			insert into log_Category values('Category '+@oldCaltegory+' has changed  to  : '+@newCaltegory+' at: '+cast(GETDATE() AS VARCHAR(60)))
end
update  dbo.Category set Category='Social' where Category='CS' AND Category IS NOT NULL;
select * from log_Category;

