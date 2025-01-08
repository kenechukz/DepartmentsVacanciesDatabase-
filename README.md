# DepartmentsVacanciesDatabase-
Task:
Your database will represent the following scenario: “Departments in a company advertise vacant positions which require specific skills (e.g., administrative, managerial, etc.). Candidates may be invited to interviews for the positions”. 
 
Your database must include the following information and may include any other information that you consider necessary for representing the specified concepts and implementing the queries listed below: 
 
•	Candidate details: candidate identifier, firstname, surname, address, telephone number, skills. 
•	Department details: department identifier, department name, address, telephone number. 
•	Position details: position identifier, department offering the position, type of position, skills required. 
•	Interview details: you must decide what information is needed to best represent this concept based on the required information and constraints specified below.   
•	Constraints: 
-	One department can request many interviews for a position.
-	One candidate can be invited to many interviews in relation to a position. 
-	One department can hire many candidates in relation to a position. 
-	Each candidate can have many skills. 
-	Each position can require many skills. 
 
NOTE: You must create table(s) and relationships that will allow you to represent the fact that interviews occur on particular dates. Your database should also represent whether a candidate is offered a position. 

For every table, create a stored procedure that includes a parametric query that allows you to insert a new row in such a table. 

Implement the following queries (some of which are parametric) using stored procedures: 
 
1.	Find the candidates with a given first name. 
2.	Find the surname of candidates with a given candidate identifier. 
3.	Find the departments with a given department name. 
4.	Find the candidates who have at least one skill required by a given position identifier. 
5.	Find the positions requiring a given skill. 
6.	Find the number of candidates that have received an offer (for any position). 
7.	Find the number of positions that require administrative skills. 
8.	Find the identifier of candidates that were interviewed only on a given date. 
9.	Find the interviews that occurred on a given date. 
10.	Find the positions sorted according to the departments which offer them. 
11.	Find the name and identifier of candidates that were interviewed more than once. 
 

 
