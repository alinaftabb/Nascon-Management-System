use NasCon;

--creating a log table that keep records of Data Manipulation on Participant Table

Drop table log_Participant;
Create Table log_Participant (id int Primary key identity,info varchar(max));

--trigger for Insertion Participant table

create trigger tr_tblParticipant_FORINSERT
on dbo.Participant
after insert
AS
Begin
	Declare @Team_Name varchar(20)
	Declare @Name varchar(30)
	select * from Participant;
	select @Team_Name=Team_Name from inserted
	select @Name=Name from inserted
	insert into log_Participant values('New Participant : '+@Name+' with team detail '+@Team_Name+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end

insert into Participant values('Sky Hunters','Hassan','LUMS','1234567','33400-0546775-3','0300-xxxxx');
insert into Participant values('PUBG Champ','Khalid','GIKI','2234567','43400-0546775-3','0400-xxxxx');
select * from Participant;
select * from log_Participant;

--trigger for Deletion Participant table

create trigger tr_tblParticipant_FORDELETE
on Participant
after delete
AS
Begin
	Declare @Team_Name varchar(20)
	Declare @Name varchar(30)
	select * from Participant;
	select @Team_Name=Team_Name from deleted
	select @Name=Name from deleted
	insert into log_Participant values('Participant: '+@Name+' with team '+@Team_Name+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Participant where CNIC='33400-0546775-3';
select * from log_Participant;

--trigger for Updation Participant table

create trigger tr_tblParticipant_FORUPDATE
on dbo.Participant
after update
AS
Begin
	Declare @CNIC varchar(15)
	Declare @newContact varchar(12)
	Declare @oldContact varchar(12)
			select @newContact=Contact from inserted
			select @oldContact=Contact from deleted
			select @CNIC=CNIC from inserted
			insert into log_Participant values('Participant having CNIC '+@CNIC+' contact changed  to  : '+@newContact+ ' from' + @oldContact+' at: '+cast(GETDATE() AS VARCHAR(60)))
end
update  dbo.Participant set Contact='0318-7083457' where CNIC='43400-0546775-3';
select* from Participant;
select * from log_Participant;

