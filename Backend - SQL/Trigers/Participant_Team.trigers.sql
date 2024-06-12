use NasCon;

--creating a log table that keep records of Data Manipulation on Participant_Team Table

Drop table log_Participant_Team;
Create Table log_Participant_Team (id int Primary key identity,info varchar(max));

--trigger for Insertion Participant_Team table

create trigger tr_tblParticipant_Team_FORINSERT
on dbo.Participant_Team
after insert
AS
Begin
	Declare @Team_Name varchar(20)
	select * from Participant_Team;
	select @Team_Name=Team_Name from inserted
	insert into log_Participant_Team values('New Participant_Team : '+@Team_Name+' is inserted at: '+cast(GETDATE() AS VARCHAR(60)))
end

insert into Participant_Team values('Chargers','user.mail@giki.edu.pk','0300-445566','123','IBA','Hamza','33300-1345772-3');
insert into Participant_Team values('Devils','user.mail@fast.edu.pk','0300-335566','124','FAST','dummy','33334-1345772-2');
select * from Participant_Team;
select * from log_Participant_Team;

--trigger for Deletion Participant_Team table

create trigger tr_tblParticipant_Team_FORDELETE
on Participant_Team
after delete
AS
Begin
	Declare @Team_Name varchar(20)
	select * from Participant_Team;
	select @Team_Name=Team_Name from deleted
	insert into log_Participant_Team values('Participant_Team : '+@Team_Name+' is deleted at: '+cast(GETDATE() AS VARCHAR(60)))
end
delete from Participant_Team where Lead_CNIC='33334-1345772-2';
select * from log_Participant_Team;

--trigger for Updation Participant_Team table

create trigger tr_tblParticipant_Team_FORUPDATE
on dbo.Participant_Team
after update
AS
Begin
	Declare @Lead_CNIC varchar(15)
	Declare @newLead_Email varchar(30)
	Declare @oldLead_Email varchar(30)
			select @newLead_Email=Lead_Email from inserted
			select @oldLead_Email=Lead_Email from deleted
			select @Lead_CNIC=Lead_CNIC from inserted
			insert into log_Participant_Team values('Participant_Team having Lead CNIC '+@Lead_CNIC+' lead email changed  to  : '+@newLead_Email+ ' from' + @oldLead_Email+' at: '+cast(GETDATE() AS VARCHAR(60)))
end
insert into Participant_Team values('Devils','user.mail@fast.edu.pk','0300-335566','124','FAST','dummy','33334-1345772-2');
update  dbo.Participant_Team set Lead_Email='i12345@nu.edu.pk' where Lead_CNIC='33334-1345772-2';
select* from Participant_Team;
select * from log_Participant_Team;

