use NasCon;

--creating a log table that keep records of Data Manipulation on Sponsors_Packages Table

Drop table log_Sponsors_Packages;
Create Table log_Sponsors_Packages (id int Primary key identity,info varchar(max));

--trigger for Insertion Sponsors_Packages table

create trigger tr_tblSponsors_Packages_FORINSERT
on dbo.Sponsors_Packages
after insert
AS
Begin
	Declare @Package varchar(15)
	select * from Sponsors_Packages;
	select @Package=Package from inserted
	insert into log_Sponsors_Packages values('New Sponsors_Packages : '+@Package+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end

insert into Sponsors_Packages values('Package 1',5000);
insert into Sponsors_Packages values('Package 2',4000);
insert into Sponsors_Packages values('Package 3',3000);

select * from Sponsors_Packages;
select * from log_Sponsors_Packages;

--trigger for Deletion Sponsors_Packages table

create trigger tr_tblSponsors_Packages_FORDELETE
on Sponsors_Packages
after delete
AS
Begin
	Declare @Package varchar(15)
	select * from Sponsors_Packages;
	select @Package=Package from deleted
	insert into log_Sponsors_Packages values('Sponsors_Packages : '+@Package+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Sponsors_Packages where Package='Package 3';
select * from log_Sponsors_Packages;

--trigger for Updation Sponsors_Packages table

create trigger tr_tblSponsors_Packages_FORUPDATE
on dbo.Sponsors_Packages
after update
AS
Begin
	Declare @Package varchar(15)
	Declare @newPrice int
	Declare @oldPrice int
			select @newPrice=Price from inserted
			select @oldPrice=Price from deleted
			select @Package=Package from inserted
			insert into log_Sponsors_Packages values('Sponsors_Packages  '+@Package+' price changed  to  : '+cast(@newPrice as varchar(7))+ ' from' + cast(@oldPrice as varchar(7))+' at: '+cast(GETDATE() AS VARCHAR(60)))
end

update  dbo.Sponsors_Packages set Price='6000' where Package='Package 1';
select* from Sponsors_Packages;
select * from log_Sponsors_Packages;

