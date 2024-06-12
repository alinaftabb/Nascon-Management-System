use NasCon;

--creating a log table that keep records of Data Manipulation on FoodDeal Table

Drop table log_FoodDeal;
Create Table log_FoodDeal (id int Primary key identity,info varchar(max));

--trigger for Insertion FoodDeal table

create trigger tr_tblfooddeal_FORINSERT
on dbo.FoodDeal
after insert
AS
Begin
	Declare @Deal_Details varchar(20)
	select * from FoodDeal;
	select @Deal_Details=Deal_Details from inserted
	insert into log_FoodDeal values('New Food Deal: '+@Deal_Details+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end

insert into FoodDeal values('Pasta','2000');
insert into FoodDeal values('Pizza+Drink','1500');
select * from FoodDeal;
select * from log_FoodDeal;

--trigger for Deletion FoodDeal table

create trigger tr_tblFoodDeal_FORDELETE
on FoodDeal
after delete
AS
Begin
	Declare @Deal_Details varchar(20)
	select * from deleted
	select @Deal_Details=Deal_Details from deleted
	insert into log_FoodDeal values('FoodDeal: '+@Deal_Details+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from FoodDeal where Deal_Details='Pizza+Drink';
select * from log_FoodDeal;

--trigger for Updation FoodDeal table

create trigger tr_tblFoodDeal_FORUPDATE
on dbo.FoodDeal
after update
AS
Begin
	Declare @Deal_Details varchar(20)
	Declare @newPrice int
	Declare @oldPrice int
			select @newPrice=Price from inserted
			select @oldPrice=Price from deleted
			select @Deal_Details=Deal_Details from inserted
			insert into log_FoodDeal values('FoodDeal '+@Deal_Details+' price changed  to  : '+cast(@newPrice as varchar(5))+ ' from' + cast(@oldPrice as varchar(5))+' at: '+cast(GETDATE() AS VARCHAR(60)))
end
update  dbo.FoodDeal set Price='1700' where Deal_Details='Pasta';
select* from FoodDeal;
select * from log_FoodDeal;

