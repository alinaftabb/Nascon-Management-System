Select S.Category, Sum(SP.Price) As SumSponsor
From Sponsors S, Sponsors_Packages SP
Group by S.Category

Select EC.Category, E.Name, E.Venue, E.Date , E.Time, E.Amount
From Event E join Event_Category EC on E.Event_ID = EC.Event_ID 
Where EC.Category = 'CS'

Select Emp_ID, Name, Category
From Faculty_Mentor
Where Category = 'Business';

SELECT E.Name,SB.Name,SB.Roll_No, SB.Batch
FROM Student_Body SB JOIN Student_Event_Head SEH
ON SB.Roll_No=SEH.Student_Head_Roll_No
JOIN Event E
ON E.Event_ID=SEH.Event_ID
WHERE E.Name='Bug Hunt'

SELECT EC.Category,SB.Name,SB.Roll_No, SB.Batch
FROM Student_Body SB JOIN Category_Secretary CS
ON SB.Roll_No=CS.Secretary_Roll_No
JOIN Event_Category EC
ON CS.Category=EC.Category
WHERE EC.Category='Business'

--5)List of all Student Executives

--(Event)

SELECT E.Name,SB.Name,SB.Roll_No, SB.Batch
FROM Student_Body SB JOIN Student_Event_Head SEH
ON SB.Roll_No=SEH.Student_Head_Roll_No
JOIN Event E
ON E.Event_ID=SEH.Event_ID
WHERE E.Name='Bug Hunt'

--(Category)

SELECT EC.Category,SB.Name,SB.Roll_No,SB.Batch
FROM Student_Body SB JOIN Category_Secretary CS
ON SB.Roll_No=CS.Secretary_Roll_No
JOIN Event_Category EC
ON CS.Category=EC.Category
WHERE EC.Category='Business'

--(Management Department)

SELECT SB.Name,SB.Roll_No,SB.Batch
FROM Student_Body SB JOIN  Team_Members TM
ON SB.Roll_No=TM.Member_Roll_No
WHERE TM.NasCon_Department='Sponsorship'

SELECT *
FROM Sponsors

SELECT *
FROM Participant 
WHERE Name='Alina Aftab'

SELECT P.Team_Name,P.Ambassador_ID,P.Institute,P.Contact,P.Institute,P.CNIC,FD.Deal_Details
FROM Food_Deal_Bought_Participant FDP JOIN FoodDeal FD
ON FDP.Deal_ID=FD.Deal_ID
JOIN Participant P
ON P.CNIC=FDP.CNIC

SELECT Event_ID,Name,Date
FROM EVENT 
WHERE DATE='02-06-2022'

SELECT COUNT(TER.Ticket_ID) As NumberOfRegistrations
FROM Team_Event_Registration TER JOIN Event E
ON E.Event_ID=TER.Event_ID
WHERE E.Name='Ad-Maniac'
GROUP BY TER.Lead_CNIC,TER.Ticket_ID

SELECT FM.Emp_ID,FM.Name AS 'Faculty Mentor' ,SB.Name as 'Event Head ',E.Event_ID,E.Name as 'Event'
FROM Faculty_Mentor FM JOIN Event_Mentor EM
ON FM.Emp_ID=EM.Emp_ID
JOIN Event E
ON E.Event_ID=EM.Event_ID
JOIN Student_Event_Head SEH
ON SEH.Event_ID=E.Event_ID
JOIN Student_Body SB
ON SB.Roll_No=SEH.Student_Head_Roll_No