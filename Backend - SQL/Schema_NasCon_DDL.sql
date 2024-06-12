Create Database NasCon;
Use NasCon;

/*Dropping If Needed*/
Drop Table Event_Category;
Drop Table Category_Mentor;
Drop Table Event;
Drop Table Student_Body;
Drop Table Executive_Body;
Drop Table Team_Members;
Drop Table Management_Departments;
Drop Table Category_Secretary;
Drop Table Student_Event_Head;
Drop Table Student_Body;
Drop Table Management_Team_Head;
Drop Table Team_Members;
Drop Table Individual_Event_Registration;
Drop Table Team_Event_Registration;
Drop Table Team_Event_Registration;
Drop Table Individual_Event_Registration;
Drop Table Food_Deal_Bought_Team;
Drop Table Food_Deal_Bought_Participant;
Drop Table Participant_Team_Members;
Drop Table Participant_Team;
Drop Table Participant;

/*Dropping If Needed*/

Create Table Faculty_Mentor 
(
	username varchar(20), 
	password varchar(30), 
	Name varchar(40), 
	Emp_ID varchar(4) Not Null Primary Key, 
	Category varchar(15)
);

Create Table Event 
(
	Event_ID varchar(4) Not Null Primary Key, 
	Name varchar(40), 
	Venue varchar(40), 
	Time Time, 
	Date Date, 
	Amount int, 
	Participation_Type varchar(15)
);

Create Table Category 
(
	Category varchar(15) Not Null Primary Key
);

Create Table Event_Category 
(
	Category varchar(15), 
	Event_ID varchar(4), 
	Foreign Key(Event_ID) References Event(Event_ID) on update cascade,
	Foreign Key(Category) References Category(Category) on delete cascade on update cascade, 
	Primary Key(Event_ID, Category) 
);

Create Table Event_Mentor 
(	
	Emp_ID varchar(4),
	Event_ID varchar(4),
	Foreign Key(Emp_ID) References Faculty_Mentor(Emp_ID) on delete cascade on update cascade, 
	Foreign Key(Event_ID) References Event(Event_ID) on delete cascade on update cascade, 
	Primary Key(Emp_ID, Event_ID)
);

Create Table Category_Mentor
(
	Emp_ID varchar(4), 
	Category varchar(15), 
	Foreign Key(Emp_ID) References Faculty_Mentor(Emp_ID) on delete cascade	on update cascade, 
	Foreign Key(Category) References Category(Category) on delete cascade on update cascade,
	Primary Key(Emp_ID, Category)
);

Create Table Student_Body 
(
	Roll_No varchar(7) Not Null Primary Key, 
	Name varchar(30), 
	Batch varchar(4)
);

Create Table Executive_Body 
(
	Executive_Roll_No varchar(7), 
	Role varchar(15),
	Foreign Key(Executive_Roll_No) References Student_Body(Roll_No) on delete cascade on update cascade, 
	Primary Key(Executive_Roll_No)
);

Create Table Category_Secretary 
(
	Category varchar (15), 
	Secretary_Roll_No varchar(7),
	Foreign Key(Category) References Category(Category) on delete cascade on update cascade,
	Foreign Key(Secretary_Roll_No) References Student_Body(Roll_No) on delete cascade on update cascade,
	Primary Key(Category, Secretary_Roll_No)
);

Create Table Student_Event_Head 
(
	Event_ID varchar(4), 
	Student_Head_Roll_No varchar(7),
	Foreign Key(Event_ID) References Event(Event_ID) on delete cascade on update cascade, 
	Foreign Key(Student_Head_Roll_No) References Student_Body(Roll_No) on delete cascade on update cascade, 
	Primary Key(Student_Head_Roll_No, Event_ID)
);

Create Table Team_Members 
(
	NasCon_Department varchar(15),
	Role varchar(20),
	Member_Roll_No varchar(7),
	Team_Head_Flag Bit, 
	Foreign Key(Member_Roll_No) References Student_Body(Roll_No) on delete cascade on update cascade,
	Primary Key(Member_Roll_No)
);

Create Table Participant 
(
	Team_Name varchar(20),
	Name varchar(30), 
	Institute varchar(20), 
	Ambassador_ID varchar(7),
	CNIC varchar(15) Not Null Primary Key, 
	Contact varchar(12),
	Email varchar(30),
	Category varchar(15), 
	Event_ID varchar(4), 
	Foreign Key(Category) References Category(Category), 
	Foreign Key(Event_ID) References Event(Event_ID)
);

Create Table Participant_Team
(
	Team_Name varchar(20),
	Lead_Email varchar(30),
	Lead_Contact varchar(12), 
	Ambassador_ID varchar(7), 
	Institute varchar(20),
	Lead_Name varchar(30), 
	Lead_CNIC varchar(15) Not Null Primary Key,
	Category varchar(15), 
	Event_ID varchar(4), 
	Foreign Key(Category) References Category(Category), 
	Foreign Key(Event_ID) References Event(Event_ID)
);

Create Table Participant_Team_Members
(
	Team_Lead_CNIC varchar(15),
	Team_Name varchar(20), 
	Member_Name varchar(30), 
	Member_Contact varchar(12),
	Member_Email varchar(30),
	Member_CNIC varchar(15), 
	Foreign Key(Team_Lead_CNIC) References Participant_Team(Lead_CNIC) on delete cascade on update cascade, 
	Primary Key(Team_Lead_CNIC, Team_Name, Member_CNIC)
);

Create Table Participant_Team_Members_two
(
	Team_Lead_CNIC varchar(15),
	Team_Name varchar(20), 
	Member_Name varchar(30),
	Member_Contact varchar(7),
	Member_Email varchar(30), 
	Member_CNIC varchar(15),
	Foreign Key(Team_Lead_CNIC) References Participant_Team(Lead_CNIC) on delete cascade on update cascade, 
	Primary Key(Team_Lead_CNIC, Team_Name, Member_CNIC)
);

Create Table FoodDeal 
(
	Deal_ID int Identity(1,1) Not Null Primary Key, 
	Deal_Details varchar(20), 
	Price int
);

Create Table Food_Deal_Bought_Participant 
(
	Deal_ID int, CNIC varchar (15),
	Foreign Key(Deal_ID) References FoodDeal(Deal_ID) on delete cascade	on update cascade, 
	Foreign Key(CNIC) References Participant(CNIC) on delete cascade on update cascade, 
	Primary Key(Deal_ID, CNIC)
);

Create Table Food_Deal_Bought_Team 
(
	Deal_ID int, 
	Lead_CNIC varchar (15),
	Foreign Key(Deal_ID) References FoodDeal(Deal_ID) on delete cascade	on update cascade, 
	Foreign Key(Lead_CNIC) References Participant_Team(Lead_CNIC) on delete cascade on update cascade, 
	Primary Key(Deal_ID, Lead_CNIC)
);

Create Table Sponsors_Packages (
	Package varchar(15), 
	Price int,
	Primary Key(Package)
);

Create Table Sponsors (
	Company varchar(30),
	Representative varchar(30),
	Rep_CNIC varchar(15),
	Category varchar(15),
	Foreign Key(Category) References Category(Category) on delete cascade on update cascade, 
	Package varchar(15), Foreign Key(Package) References Sponsors_Packages(Package), 
	Primary Key(Category, Rep_CNIC)
);

Create Table Admin (
	username varchar(30),
	password varchar(30), 
	Name varchar(30), 
	Primary Key(username, password)
);

Create Table StudentExec_login
(
	username varchar(30), 
	password varchar(30), 
	Name varchar(30), 
	Primary Key(username, password)
);

select * from Faculty_Mentor