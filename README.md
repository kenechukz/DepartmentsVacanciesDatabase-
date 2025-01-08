# DepartmentsVacanciesDatabase-
Created a database for job vacancies within different departments in a company. Used store procedures to insert multiple rows of data into each table accordingly. Also used stored procedures to complete tasks with tasks.pdf in relation to relational algebra using MySQL query language. 

• Some of the constraints I had to implement were:

1. One department can request many interviews for a position.
2. One candidate can be invited to many interviews in relation to a position.
3. One department can hire many candidates in relation to a position.
4. Each candidate can have many skills.
5. Each position can require many skills.
6. NOTE: You must create table(s) and relationships that will allow you to represent the fact that interviews occur on particular dates. Your database should also represent whether a candidate is offered a position.


To implement constraint 1, I allowed for the Interview table to have the same posid (which belongs to a particular deparment) for interviews whether it be the same candidate or a different candidate. 

-The one thing that had to be unique was the interview date. "posid" is a foreign key that references the positions table and "candidateid" is a foreign key that references the candiate table. As you can see in row 1 and 2 of the Interview table, the posid and candidateid is the same, but the date is different. 

-The position table has foreign key "deptid" which references the Department table, allowing for different posids in the same deptid. 

-These two combined allows for many interviews for a position of a department.





Candidate table:
![image](https://github.com/user-attachments/assets/844688ee-90c7-4d54-9884-974adec03ec8)




Candidate skills table:
![image](https://github.com/user-attachments/assets/52ec65bf-8698-420c-a693-f0f18452fab3)


Dates table:
![image](https://github.com/user-attachments/assets/b84a93cd-2213-4c0c-be75-5408f7325e1b)


Department table:
![image](https://github.com/user-attachments/assets/8577b05c-3361-46d2-9658-d9a085343eca)


Hire table:
![image](https://github.com/user-attachments/assets/acc0b861-fa34-4e2f-9768-453639784cee)

Interview table:
![image](https://github.com/user-attachments/assets/c626c579-01f7-4048-81bd-db6909b64203)


Position table:
![image](https://github.com/user-attachments/assets/a0218253-a084-411e-afb5-4c8563221e02)

Position skills table:
![image](https://github.com/user-attachments/assets/a0593cdb-cec5-44d5-a17d-9596b1f86310)

Skills table:
![image](https://github.com/user-attachments/assets/7fd82c27-6197-4612-95b0-340605ff6626)





 
