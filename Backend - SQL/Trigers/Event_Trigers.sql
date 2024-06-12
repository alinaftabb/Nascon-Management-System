use NasCon;

--creating a log table that keep records of Data Manipulation on Event Table

Drop table log_Event;
Create Table log_Event (id int Primary key identity,info varchar(max));

--trigger for Insertion Event table

create trigger tr_tblEvent_FORINSERT
on Event
after insert
AS
Begin
	Declare @Event_ID varchar(4)
	Declare @Name varchar(40)
	select * from inserted
	select @Event_ID=Event_ID from inserted
	select @Name=Name from inserted
	insert into log_Event values('New Event: '+@Name+' having id '+ @Event_ID+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end
insert into Event values('ABCD','Battle of the bands','CS101','04:37','2022-04-12',1000,'EE1');
insert into Event values('ABCE','Battle of the bands','CS101','04:37','2022-04-12',1000,'EE1');
select * from log_Event;

--trigger for Deletion Event table

create trigger tr_tblEvent_FORDELETE
on Event
after delete
AS
Begin
	Declare @Event_ID varchar(30)
	select * from deleted
	select @Event_ID=Event_ID from deleted
	insert into log_Event values('Event having id : '+@Event_ID+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Event where Event_ID='ABCD';
select * from log_Event;

--trigger for Updation Event table

create trigger tr_tblEvent_FORUPDATE
on Event
after update
AS
Begin
	Declare @Venue varchar (40)
	Declare @Name varchar (40)
	Declare @oldVenue varchar (40)
	Declare @newVenue varchar (40)
	select @newVenue=Venue from inserted
	select @oldVenue=Venue from deleted
	select @Name=Name from inserted
	insert into log_Event values('The Event '+@Name+' has changed venue to  : '+@newVenue+' from : '+@oldVenue+' at: '+cast(GETDATE() AS VARCHAR(60)))
end
update  Event set Venue='CS305' where Venue='CS101';
select * from log_Event;
