Use NasCon;

Insert into Category Values ('EE');
Insert into Category Values ('CS');
Insert into Category Values ('Business');
Insert into Category Values ('Social');
Insert into Category Values ('Sports');

Insert into Event Values ('EE1', 'Speed Wiring', 'B-203', '10:00:00', '01-06-2022', 2500, 'Team');
Insert into Event_Category Values ('EE', 'EE1');
Insert into Event Values ('CS1', 'Bug Hunt', 'C-201', '10:00:00', '01-06-2022', 2500, 'Team');
Insert into Event_Category Values ('CS', 'CS1');
Insert into Event Values ('BS1', 'Entrepreneurial Venture', 'A-04', '11:00:00', '01-06-2022', 2500, 'Team');
Insert into Event_Category Values ('Business', 'BS1');
Insert into Event Values ('SC1', 'Auto Show', 'Parking Area', '18:00:00', '02-06-2022', 1000, 'Individual');
Insert into Event_Category Values ('Social', 'SC1');
Insert into Event Values ('SP1', 'Futsal', 'Futsal Ground', '17:00:00', '01-06-2022', 2500, 'Team');
Insert into Event_Category Values ('Sports', 'SP1');
Insert into Event Values ('EE2', 'Aero Wars', 'B-100', '11:30:00', '01-06-2022', 2500, 'Team');
Insert into Event_Category Values ('EE', 'EE2');
Insert into Event Values ('CS2', 'Cyber Security Quiz', 'C-501', '12:00:00', '01-06-2022', 2500, 'Individual');
Insert into Event_Category Values ('CS', 'CS2');
Insert into Event Values ('BS2', 'Ad-Maniac', 'MEDC-1', '13:00:00', '02-06-2022', 2500, 'Team');
Insert into Event_Category Values ('Business', 'BS2');
Insert into Event Values ('SC2', 'NasCon got Challenge', 'Auditorium', '18:30:00', '03-06-2022', 1500, 'Individual');
Insert into Event_Category Values ('Social', 'SC2');
Insert into Event Values ('SP2', 'Basketball', 'Basketball Court', '18:45:00', '01-06-2022', 2500, 'Team');
Insert into Event_Category Values ('Sports', 'SP2');
Insert into Event Values ('EE3', 'Robo Race', 'EE Lab 1', '12:00:00', '02-06-2022', 2500, 'Team');
Insert into Event_Category Values ('EE', 'EE3');
Insert into Event Values ('CS3', 'Mobile App Development', 'Rawal Lab 1', '14:30:00', '02-06-2022', 2500, 'Team');
Insert into Event_Category Values ('CS', 'CS3');
Insert into Event Values ('BS3', 'Marketing Plan', 'Auditorium', '11:00:00', '02-06-2022', 2500, 'Team');
Insert into Event_Category Values ('Business', 'BS3');
Insert into Event Values ('SC3', 'English Poetry', 'MEDC 1', '15:30:00', '02-06-2022', 1000, 'Individual');
Insert into Event_Category Values ('Social', 'SC3');
Insert into Event Values ('SP3', 'Cricket', 'Cricket Ground', '17:00:00', '02-06-2022', 2500, 'Team');
Insert into Event_Category Values ('Sports', 'SP3');

Insert into Admin Values ('alinaaftab', 'password1', 'Alina Aftab');
Insert into Admin Values ('murtazahaider', 'password2', 'Murtaza Haider');
Insert into Admin Values ('jessicapearson', 'pearson1', 'Jessica Pearson');
Insert into Admin Values ('nasconadmin', 'password11', 'Daniel Hardman');
Insert into Admin Values ('ryanthomas', 'ryan111', 'Ryan H. Thomas');

Insert into Participant values ('Mujtaba', 'Mujtaba Haider', 'NUST', '19I0304', '374053141592651', '0300-1231231','Mujtaba.Haider@nu.edu.pk', 'Social', 'SC3' );
Insert into Participant values ('Alina', 'Alina Aftab', 'FAST', '19I2022', '3740512345678', '0331-202303','Alina.Aftab@nu.edu.pk', 'Social', 'SC3');
Insert into Participant values ('Zyena', 'Zyena Kamran', 'FAST', '20I0123', '6540112345678', '0332-102303','Zyena.Kamran@nu.edu.pk', 'Social', 'SC2');
Insert into Participant values ('Abullah', 'Abdullah Tariq', 'LUMS', '21I0123', '5532112345678', '0335-1003300','Abullah.Tariq@nu.edu.pk', 'Social','SC1');

Insert into Participant_Team values ('A Team', 'murtazahaider@gmail.com', '0302-8559559', '18I0303', 'FAST', 'Murtaza Haider', '3740555328015', 'CS', 'CS3');
Insert into Participant_Team_Members values ('3740555328015', 'A Team', 'Alishba Asif', '0312-5533212', 'alishba@gmail.com', '3340112345678');
Insert into Participant_Team_Members values ('3740555328015', 'A Team', 'Mahad Ahmed', '0322-5533212', 'mahad@gmail.com', '3740587654321');

Insert into Participant_Team values ('PrimeX', 'saharashfaq@gmail.com', '03212253434', '20I0822', 'NUST', 'Sahar Ashfaq', '3310562544322', 'Business', 'BS2');
Insert into Participant_Team_Members values ('3310562544322', 'PrimeX', 'Dehya Khan', '0321-8846122', 'dehya@gmail.com', '7430152432617');
Insert into Participant_Team_Members values ('3310562544322', 'PrimeX', 'Saman Kaleem', '0333-5104432', 'saman@gmail.com', '6340198767854');

Insert into Sponsors_Packages values ('Bronze', 25000);
Insert into Sponsors_Packages values ('Silver', 60000);
Insert into Sponsors_Packages values ('Gold', 100000);

Insert into Sponsors values ('Ufone', 'Maryam', '3740566543234', 'CS', 'Gold');
Insert into Sponsors values ('Bentley System', 'Rizwan', '3740532897801', 'CS', 'Silver');
Insert into Sponsors values ('EdFry', 'Qasim', '6310487612343', 'Business', 'Gold');
Insert into Sponsors values ('Samsung', 'Irfan', '3740597584199', 'Business', 'Gold');
Insert into Sponsors values ('Tripe A Events', 'Sana', '6310476898702', 'Social', 'Silver');
Insert into Sponsors values ('JS Bank', 'Fatima', '3740543211236', 'Social', 'Gold');
Insert into Sponsors values ('Toyota', 'Haider', '3740572453211', 'Social', 'Gold');
Insert into Sponsors values ('GE', 'Hamdani', '7210456789811', 'EE', 'Gold');
Insert into Sponsors values ('Phoenix FC', 'Shaharyar', '3740572483233', 'Sports', 'Bronze');
Insert into Sponsors values ('NBA All Stars', 'Ayesha', '6310367812308', 'Sports', 'Gold');

Insert into Faculty_Mentor values ('adnantariq', 'adt123', 'Adnan Tariq', 'CS01','CS');
Insert into Faculty_Mentor values ('ifrahqaiser', 'abc123', 'Ifrah Qaiser', 'CS02','CS');
Insert into Faculty_Mentor values ('naveedahmed', 'bcd123', 'Naveed Ahmed', 'CS04','CS');
Insert into Faculty_Mentor values ('ayesha.bano', 'ash123', 'Ayesha Bano', 'MG01','Business');
Insert into Faculty_Mentor values ('sidrahsh', 'xyz123', 'Sidrah Ahmad', 'MG02','Business');
Insert into Faculty_Mentor values ('hassanraza', 'hsr999', 'Hassan Raza', 'CS03','Sports');
Insert into Faculty_Mentor values ('sumairsajjad', 'ss111', 'Sumair Sajjad', 'SC01','Social');
Insert into Faculty_Mentor values ('bashirabbasi', 'ba999', 'Bashir Abbasi', 'SC02','Social');
Insert into Faculty_Mentor values ('khalidhussain', 'kh112', 'Khalid Hussain', 'SP01','Sports');
Insert into Faculty_Mentor values ('javeriazaheer', 'jz323', 'Javeria Zaheer', 'EE01','EE');
Insert into Faculty_Mentor values ('hasankhan', 'hk999', 'Hasan Khan', 'EE02','EE');

Insert into Event_Mentor values ('CS01', 'CS1');
Insert into Event_Mentor values ('CS02', 'CS2');
Insert into Event_Mentor values ('CS04', 'CS3');
Insert into Event_Mentor values ('MG01', 'BS1');
Insert into Event_Mentor values ('MG02', 'BS2');
Insert into Event_Mentor values ('SC01', 'SC1');
Insert into Event_Mentor values ('SC02', 'SC2');
Insert into Event_Mentor values ('EE01', 'EE1');
Insert into Event_Mentor values ('SP01', 'SP1');

Insert into Student_Body values ('18I0902', 'Abu Bakar', '2018'); 
Insert into Student_Body values ('18I2022', 'Fatima Haider', '2018'); 
Insert into Student_Body values ('18I0933', 'Haider Hamdani', '2018'); 
Insert into Student_Body values ('18I0707', 'Eesha Qasim', '2018'); 
Insert into Student_Body values ('19I0821', 'Haider Mojiz', '2019'); 
Insert into Student_Body values ('19I0830', 'Noveen Abbas', '2019'); 
Insert into Student_Body values ('19I2301', 'Taha Abbas', '2019'); 
Insert into Student_Body values ('19I0326', 'Minahil Ahmed', '2019'); 
Insert into Student_Body values ('19I1761', 'Talha Ahmed', '2019'); 
Insert into Student_Body values ('20I0822', 'Murtaza Haider', '2020'); 
Insert into Student_Body values ('20I0202', 'Talha Waqar', '2020'); 
Insert into Student_Body values ('20I0403', 'Ayesha Sajid', '2020'); 
Insert into Student_Body values ('20I0650', 'Nabeeha Faisal', '2020'); 
Insert into Student_Body values ('20I0503', 'Abdullah Gill', '2020'); 
Insert into Student_Body values ('20I0551', 'Eesha Shafqat', '2020'); 
Insert into Student_Body values ('20I1961', 'Hamza Ahmed', '2020');
Insert into Student_Body values ('21I0822', 'Fatima Amjad', '2021'); 
Insert into Student_Body values ('21I0990', 'Hamid Ahmed', '2021'); 
Insert into Student_Body values ('21I0102', 'Naveed Ahmed', '2021'); 
Insert into Student_Body values ('21I0204', 'Muhammad Khan', '2021'); 
Insert into Student_Body values ('21I0456', 'Aqsa Ahmed', '2021'); 
Insert into Student_Body values ('21I0322', 'Areebah Khan', '2021'); 
Insert into Student_Body values ('21I0454', 'Naveed Iqbal', '2021'); 
Insert into Student_Body values ('21I0665', 'Tooba Sajid', '2021'); 
Insert into Student_Body values ('21I0786', 'Ahmed Javed', '2021'); 

Insert into Executive_Body values ('18I0902', 'President');
Insert into Executive_Body values ('18I2022', 'Vice President');

Insert into Category_Secretary values ('Social', '18I0933');
Insert into Category_Secretary values ('EE', '20I0202');
Insert into Category_Secretary values ('CS', '18I0707');
Insert into Category_Secretary values ('Business', '19I0821');
Insert into Category_Secretary values ('Sports', '19I0830');

Insert into Student_Event_Head values ('CS1', '19I2301');
Insert into Student_Event_Head values ('CS2', '19I0326');
Insert into Student_Event_Head values ('CS3', '19I1761');
Insert into Student_Event_Head values ('EE1', '20I0202');
Insert into Student_Event_Head values ('EE2', '20I0403');
Insert into Student_Event_Head values ('BS1', '20I0822');
Insert into Student_Event_Head values ('BS3', '20I0650');
Insert into Student_Event_Head values ('SC1', '20I0503');
Insert into Student_Event_Head values ('SC2', '20I0551');
Insert into Student_Event_Head values ('SP1', '20I1961');

Insert into Team_Members values ('Sponsorship', 'Head', '18I0933', 1);
Insert into Team_Members values ('Sponsorship', 'Secretary', '19I0821', 0);
Insert into Team_Members values ('Sponsorship', 'Team Member', '21I0822', 0);
Insert into Team_Members values ('Sponsorship', 'Team Member', '21I0990', 0);
Insert into Team_Members values ('Logistics', 'Head', '19I0326', 1);
Insert into Team_Members values ('Logistics', 'Secretary', '20I0202', 0);
Insert into Team_Members values ('Logistics', 'Team Member', '21I0102', 0);
Insert into Team_Members values ('Logistics', 'Team Member', '21I0204', 0);
Insert into Team_Members values ('Operations', 'Head', '20I0822', 1);
Insert into Team_Members values ('Operations', 'Secretary', '19I0830', 0);
Insert into Team_Members values ('Operations', 'Team Member', '21I0456', 0);
Insert into Team_Members values ('Operations', 'Team Member', '21I0322', 0);

Insert into FoodDeal values ('3 B, 3F, 3D', 1200);
Insert into FoodDeal values ('4 B, 4F, 4D', 1500);
Insert into FoodDeal values ('1 B, 1F, 1D', 500);

Insert into Food_Deal_Bought_Participant values (3, '374053141592651');
Insert into Food_Deal_Bought_Participant values (3, '5532112345678');
Insert into Food_Deal_Bought_Participant values (3, '3740512345678');
Insert into Food_Deal_Bought_Team values (1, '3740555328015');
Insert into Food_Deal_Bought_Team values (2, '3310562544322');
