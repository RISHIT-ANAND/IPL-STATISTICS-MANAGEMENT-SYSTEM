REM   Script: DBMS ASSIGMENT 2
REM   ON 20TH COMPLETED BEFORE CAT 2 ON IPL SYSTEM

CREATE TABLE TEAM( 
T_Id VARCHAR(100) primary key, 
T_Name VARCHAR(100), 
No_of_players DOUBLE, 
Coach_Id VARCHAR(100) unique, 
foreign key(Coach_Id) references COACH(Coach_Id) 
);

CREATE TABLE COACH( 
Coach_Id VARCHAR(100) primary key, 
C_Name VARCHAR(100) 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C1', 'Smith' 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C2', 'Rahul' 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C3', 'Adam' 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C4', 'Dravid' 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C5', 'Sanjay' 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C6', 'Allen' 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C7', 'William' 
);

INSERT INTO COACH(Coach_Id, C_Name) 
VALUES 
( 
'C8', 'Harry' 
);

select  * from COACH;

CREATE TABLE TEAM( 
T_Id VARCHAR(100) primary key, 
T_Name VARCHAR(100), 
No_of_players DOUBLE, 
Coach_Id VARCHAR(100) unique, 
foreign key(Coach_Id) references COACH(Coach_Id) 
);

CREATE TABLE TEAM( 
T_Id VARCHAR(100) primary key, 
T_Name VARCHAR(100), 
No_of_players number, 
Coach_Id VARCHAR(100) unique, 
foreign key(Coach_Id) references COACH(Coach_Id) 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T1', 'Kolkata Knight Riders', 14, 'C1' 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T2', 'Royal Challengers Bangalore', 14, 'C2' 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T3', 'Chennai Super Kings', 20, 'C3' 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T4', 'Kings XI Punjab', 16, 'C4' 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T5', 'Rajasthan Royals', 13, 'C5' 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T6', 'Delhi Capitals', 15, 'C6' 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T7', 'Mumbai Indians', 18, 'C7' 
);

INSERT INTO TEAM(T_Id, T_Name, No_of_players, Coach_Id) 
VALUES 
( 
'T8', 'Sunrisers Hyderabad', 17, 'C8' 
);

select * from PLAYER;

select * from PLAYER;

select * from TEAM;

CREATE TABLE PLAYER( 
P_Id VARCHAR(100) primary key, 
T_Id VARCHAR(100), 
foreign key(T_Id) references TEAM(T_Id), 
P_Name VARCHAR(100), 
P_Age NUMBER, 
P_Country VARCHAR(100), 
P_Designation VARCHAR(100), 
check(P_Designation in('All-Rounder', 'Batsman', 'Bowler', 'bowler', 'batsman')), 
Matches_played NUMBER, 
Batting_Skill VARCHAR(100), 
Bowling_Skill VARCHAR(100), 
Captain VARCHAR(100) unique, 
Wicketkeeper VARCHAR(100) unique 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK1', 'T3', 'MS Dhoni', 23, 'India', 'Batsman', 280, 'Left_Hand', 'Right-arm medium', 'C1', 'W1' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK2', 'T3', 'Suresh Raina', 21, 'India', 'Bowler', 209, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK3', 'T3', 'Kedar Jadhav', 39, 'India', 'All-Rounder', 298, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK4', 'T3', 'Ravindra Jadeja', 26, 'India', 'Batsman', 294, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK5', 'T3', 'Dwayne Bravo', 31, 'West Indies', 'Bowler', 202, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK6', 'T3', 'Karn Sharma', 20, 'India', 'All-Rounder', 251, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK7', 'T3', 'Shane Watson', 39, 'Australia', 'Batsman', 214, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK8', 'T3', 'Shardul Thakur', 29, 'India', 'Bowler', 280, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK9', 'T3', 'Ambati Rayudu', 23, 'India', 'All-Rounder', 254, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK10', 'T3', 'Harbhajan Singh', 27, 'India', 'Batsman', 203, 'Right_Hand', 'Legbreak googly', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK11', 'T3', 'Murali Vijay', 37, 'India', 'Bowler', 258, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK12', 'T3', 'Faf du Plessis', 22, 'South Africa', 'All-Rounder', 208, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK13', 'T3', 'Imran Tahir', 35, 'South Africa', 'Batsman', 275, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK14', 'T3', 'Deepak Chahar', 39, 'India', 'Bowler', 219, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK15', 'T3', 'Lungisani Ngidi', 39, 'South Africa', 'All-Rounder', 260, 'Right_Hand', 'Left-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK16', 'T3', 'Mitchell Santner', 29, 'New Zealand', 'Batsman', 257, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK17', 'T3', 'KM Asif', 36, 'India', 'Batsman', 220, 'Left_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK18', 'T3', 'Jagadeesan Narayan', 24, 'India', 'All-Rounder', 223, 'Left_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK19', 'T3', 'Monu Singh', 30, 'India', 'Batsman', 283, 'Left_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK20', 'T3', 'Ruturaj Gaikwad', 24, 'India', 'Bowler', 241, ' NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB1', 'T2', 'Virat Kohli', 20, 'India', 'All-Rounder', 283, 'Left_Hand', 'Right-arm offbreak', 'C2', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB2', 'T2', 'AB de Villiers', 27, 'South Africa', 'Batsman', 203, 'Left_Hand', 'Right-arm fast-medium', 'NULL', 'W2' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB3', 'T2', 'Yuzvendra Chahal', 31, 'India', 'Bowler', 221, 'NULL', 'Right-arm offbreak', 'NULL', 'W3' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB4', 'T2', 'Shivam Dube', 24, 'India', 'All-Rounder', 247, 'Left_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB5', 'T2', 'Umesh Yadav', 29, 'India', 'Batsman', 225, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB6', 'T2', 'Washington Sundar', 31, 'India', 'Bowler', 271, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB7', 'T2', 'Navdeep Saini', 23, 'India', 'All-Rounder', 249, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB8', 'T2', 'Mohammed Siraj', 26, 'India', 'Batsman', 286, 'Left_Hand', 'Slow left-arm chinaman', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB9', 'T2', 'Moeen Ali', 30, 'England', 'Bowler', 250, 'NULL', 'Left-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB10', 'T2', 'Parthiv Patel', 29, 'India', 'All-Rounder', 200, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB11', 'T2', 'Pawan Negi', 34, 'India', 'Batsman', 241, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB12', 'T2', 'Gurkeerat Singh', 40, 'India', 'Bowler', 251, 'NULL', 'Right-arm fast-medium', 'NULL', 'W4' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB13', 'T2', 'Devdutt Padikkal', 22, 'India', 'All-Rounder', 259, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB14', 'T2', 'Ankit Rajpoot', 36, 'India', 'Batsman', 293, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'W5' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC1', 'T6', 'Ajinkya Rahane', 40, 'India', 'Bowler', 205, 'NULL', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC2', 'T6', 'Ravichandran Ashwin', 34, 'India', 'Batsman', 200, 'Right_Hand', 'NULL', 'C3', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC3', 'T6', 'Rishabh Pant', 34, 'India', 'Batsman', 300, 'Right_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC4', 'T6', 'Shreyas Iyer', 23, 'India', 'Bowler', 280, 'NULL', 'Legbreak googly', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC5', 'T6', 'Shikhar Dhawan', 29, 'India', 'All-Rounder', 222, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC6', 'T6', 'Axar Patel', 25, 'India', 'Batsman', 254, 'Left_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC7', 'T6', 'Kagiso Rabada', 23, 'South Africa', 'Bowler', 298, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC8', 'T6', 'Amit Mishra', 36, 'India', 'All-Rounder', 200, 'Left_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC9', 'T6', 'Prithvi Shaw', 25, 'India', 'Batsman', 281, 'Right_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC10', 'T6', 'Ishant Sharma', 29, 'India', 'Bowler', 219, 'NULL', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC11', 'T6', 'Avesh Khan', 40, 'India', 'All-Rounder', 247, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC12', 'T6', 'Keemo Paul', 22, 'West Indies', 'Batsman', 264, 'Right_Hand', 'Right-arm medium', 'NULL', 'W6' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC13', 'T6', 'Harshal Patel', 30, 'India', 'Batsman', 226, 'Right_Hand', 'NULL', 'NULL', 'W7' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC14', 'T6', 'Sandeep Lamichhane', 20, 'Nepal', 'All-Rounder', 258, 'Left_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC15', 'T6', 'Mayank Markande', 37, 'India', 'Batsman', 231, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI1', 'T7', 'Rohit Sharma', 23, 'India', 'Bowler', 282, 'NULL', 'Right-arm offbreak', 'C4', 'NULL' 
);

drop tABLE PLAYER;

CREATE TABLE PLAYER( 
P_Id VARCHAR(100) primary key, 
T_Id VARCHAR(100), 
foreign key(T_Id) references TEAM(T_Id), 
P_Name VARCHAR(100), 
P_Age NUMBER, 
P_Country VARCHAR(100), 
P_Designation VARCHAR(100), 
check(P_Designation in('All-Rounder', 'Batsman', 'Bowler', 'bowler', 'batsman')), 
Matches_played NUMBER, 
Batting_Skill VARCHAR(100), 
Bowling_Skill VARCHAR(100), 
Captain VARCHAR(100), 
Wicketkeeper VARCHAR(100) 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK1', 'T3', 'MS Dhoni', 23, 'India', 'Batsman', 280, 'Left_Hand', 'Right-arm medium', 'C1', 'W1' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK2', 'T3', 'Suresh Raina', 21, 'India', 'Bowler', 209, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK3', 'T3', 'Kedar Jadhav', 39, 'India', 'All-Rounder', 298, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK4', 'T3', 'Ravindra Jadeja', 26, 'India', 'Batsman', 294, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK5', 'T3', 'Dwayne Bravo', 31, 'West Indies', 'Bowler', 202, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK6', 'T3', 'Karn Sharma', 20, 'India', 'All-Rounder', 251, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK7', 'T3', 'Shane Watson', 39, 'Australia', 'Batsman', 214, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK8', 'T3', 'Shardul Thakur', 29, 'India', 'Bowler', 280, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK9', 'T3', 'Ambati Rayudu', 23, 'India', 'All-Rounder', 254, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK10', 'T3', 'Harbhajan Singh', 27, 'India', 'Batsman', 203, 'Right_Hand', 'Legbreak googly', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK11', 'T3', 'Murali Vijay', 37, 'India', 'Bowler', 258, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK12', 'T3', 'Faf du Plessis', 22, 'South Africa', 'All-Rounder', 208, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK13', 'T3', 'Imran Tahir', 35, 'South Africa', 'Batsman', 275, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK14', 'T3', 'Deepak Chahar', 39, 'India', 'Bowler', 219, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK15', 'T3', 'Lungisani Ngidi', 39, 'South Africa', 'All-Rounder', 260, 'Right_Hand', 'Left-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK16', 'T3', 'Mitchell Santner', 29, 'New Zealand', 'Batsman', 257, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK17', 'T3', 'KM Asif', 36, 'India', 'Batsman', 220, 'Left_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK18', 'T3', 'Jagadeesan Narayan', 24, 'India', 'All-Rounder', 223, 'Left_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK19', 'T3', 'Monu Singh', 30, 'India', 'Batsman', 283, 'Left_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'CSK20', 'T3', 'Ruturaj Gaikwad', 24, 'India', 'Bowler', 241, ' NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB1', 'T2', 'Virat Kohli', 20, 'India', 'All-Rounder', 283, 'Left_Hand', 'Right-arm offbreak', 'C2', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB2', 'T2', 'AB de Villiers', 27, 'South Africa', 'Batsman', 203, 'Left_Hand', 'Right-arm fast-medium', 'NULL', 'W2' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB3', 'T2', 'Yuzvendra Chahal', 31, 'India', 'Bowler', 221, 'NULL', 'Right-arm offbreak', 'NULL', 'W3' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB4', 'T2', 'Shivam Dube', 24, 'India', 'All-Rounder', 247, 'Left_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB5', 'T2', 'Umesh Yadav', 29, 'India', 'Batsman', 225, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB6', 'T2', 'Washington Sundar', 31, 'India', 'Bowler', 271, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB7', 'T2', 'Navdeep Saini', 23, 'India', 'All-Rounder', 249, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB8', 'T2', 'Mohammed Siraj', 26, 'India', 'Batsman', 286, 'Left_Hand', 'Slow left-arm chinaman', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB9', 'T2', 'Moeen Ali', 30, 'England', 'Bowler', 250, 'NULL', 'Left-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB10', 'T2', 'Parthiv Patel', 29, 'India', 'All-Rounder', 200, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB11', 'T2', 'Pawan Negi', 34, 'India', 'Batsman', 241, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB12', 'T2', 'Gurkeerat Singh', 40, 'India', 'Bowler', 251, 'NULL', 'Right-arm fast-medium', 'NULL', 'W4' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB13', 'T2', 'Devdutt Padikkal', 22, 'India', 'All-Rounder', 259, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RCB14', 'T2', 'Ankit Rajpoot', 36, 'India', 'Batsman', 293, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'W5' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC1', 'T6', 'Ajinkya Rahane', 40, 'India', 'Bowler', 205, 'NULL', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC2', 'T6', 'Ravichandran Ashwin', 34, 'India', 'Batsman', 200, 'Right_Hand', 'NULL', 'C3', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC3', 'T6', 'Rishabh Pant', 34, 'India', 'Batsman', 300, 'Right_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC4', 'T6', 'Shreyas Iyer', 23, 'India', 'Bowler', 280, 'NULL', 'Legbreak googly', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC5', 'T6', 'Shikhar Dhawan', 29, 'India', 'All-Rounder', 222, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC6', 'T6', 'Axar Patel', 25, 'India', 'Batsman', 254, 'Left_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC7', 'T6', 'Kagiso Rabada', 23, 'South Africa', 'Bowler', 298, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC8', 'T6', 'Amit Mishra', 36, 'India', 'All-Rounder', 200, 'Left_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC9', 'T6', 'Prithvi Shaw', 25, 'India', 'Batsman', 281, 'Right_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC10', 'T6', 'Ishant Sharma', 29, 'India', 'Bowler', 219, 'NULL', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC11', 'T6', 'Avesh Khan', 40, 'India', 'All-Rounder', 247, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC12', 'T6', 'Keemo Paul', 22, 'West Indies', 'Batsman', 264, 'Right_Hand', 'Right-arm medium', 'NULL', 'W6' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC13', 'T6', 'Harshal Patel', 30, 'India', 'Batsman', 226, 'Right_Hand', 'NULL', 'NULL', 'W7' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC14', 'T6', 'Sandeep Lamichhane', 20, 'Nepal', 'All-Rounder', 258, 'Left_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'DC15', 'T6', 'Mayank Markande', 37, 'India', 'Batsman', 231, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI1', 'T7', 'Rohit Sharma', 23, 'India', 'Bowler', 282, 'NULL', 'Right-arm offbreak', 'C4', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI2', 'T7', 'Hardik Pandya', 34, 'India', 'All-Rounder', 213, 'Left_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI3', 'T7', 'Krunal Pandya', 36, 'India', 'Batsman', 224, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI4', 'T7', 'Jasprit Bumrah', 21, 'India', 'Bowler', 226, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI5', 'T7', 'Ishan Kishan', 33, 'India', 'All-Rounder', 289, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI6', 'T7', 'Kieron Pollard', 25, 'West Indies', 'Batsman', 241, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI7', 'T7', 'Suryakumar Yadav', 35, 'India', 'Bowler', 224, 'NULL', 'Right-arm offbreak', 'NULL', 'W8' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI8', 'T7', 'Quinton de Kock', 23, 'South Africa', 'All-Rounder', 287, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'W9' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI9', 'T7', 'Lasith Malinga', 38, 'Sri Lanka', 'Batsman', 299, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI10', 'T7', 'Rahul Chahar', 40, 'India', 'Bowler', 221, 'NULL', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI11', 'T7', 'Mitchell McClenaghan', 35, 'New Zealand', 'All-Rounder', 284, 'Left_Hand', 'Left-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI12', 'T7', 'Anmolpreet Singh', 26, 'India', 'Batsman', 294, 'Right_Hand', 'Left-arm fast-medium', 'NULL', 'W10' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI13', 'T7', 'Jayant Yadav', 31, 'India', 'Batsman', 229, 'Right_Hand', 'NULL', 'NULL', 'W11' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI14', 'T7', 'Aditya Tare', 36, 'India', 'All-Rounder', 205, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI15', 'T7', 'Anukul Roy', 22, 'India', 'Batsman', 252, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI16', 'T7', 'Sherfane Rutherford', 29, 'West Indies', 'Bowler', 205, 'NULL', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI17', 'T7', 'Trent Boult', 39, 'Australia', 'All-Rounder', 276, 'Right_Hand', 'Right-arm fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'MI18', 'T7', 'Dhawal Kulkarni', 28, 'India', 'Batsman', 212, 'Left_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR1', 'T1', 'Sunil Narine', 20, 'West Indies', 'Bowler', 238, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR2', 'T1', 'Andre Russell', 24, 'West Indies', 'Batsman', 292, 'Right_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR3', 'T1', 'Dinesh Karthik�', 23, 'India', 'Batsman', 288, 'Right_Hand', 'Legbreak googly', 'C5', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR4', 'T1', 'Kuldeep Yadav', 34, 'India', 'Bowler', 260, 'NULL', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR5', 'T1', 'Nitish Rana', 35, 'India', 'All-Rounder', 249, 'Right_Hand', 'Right-arm medium', 'NULL', 'W12' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR6', 'T1', 'Kamlesh Nagarkoti', 33, 'India', 'Batsman', 272, 'Right_Hand', 'Left-arm medium-fast', 'NULL', 'W13' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR7', 'T1', 'Shivam Mavi', 35, 'India', 'Bowler', 225, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR8', 'T1', 'Shubman Gill', 21, 'India', 'All-Rounder', 243, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR9', 'T1', 'Lockie Ferguson', 27, 'New Zealand', 'Batsman', 209, 'Right_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR10', 'T1', 'Rinku Singh', 25, 'India', 'Bowler', 231, 'NULL', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR11', 'T1', 'Harry Gurney', 26, 'England', 'All-Rounder', 211, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR12', 'T1', 'Prasidh Krishna', 28, 'India', 'Batsman', 216, 'Left_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR13', 'T1', 'Sandeep Warrier', 32, 'India', 'Bowler', 285, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KKR14', 'T1', 'Siddhesh Lad', 33, 'India', 'All-Rounder', 284, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR1', 'T5', 'Ben Stokes', 33, 'England', 'Batsman', 248, 'Right_Hand', 'Right-arm fast', 'C6', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR2', 'T5', 'Steve Smith', 23, 'Australia', 'Bowler', 230, 'NULL', 'Slow left-arm orthodox', 'NULL', 'W14' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR3', 'T5', 'Sanju Samson', 28, 'India', 'All-Rounder', 243, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'W15' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR4', 'T5', 'Jofra Archer', 24, 'England', 'Batsman', 246, 'Right_Hand', 'Right-arm medium', 'NULL', 'W16' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR5', 'T5', 'Jos Buttler', 35, 'England', 'Bowler', 244, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR6', 'T5', 'Varun Aaron', 36, 'India', 'All-Rounder', 252, 'Right_Hand', 'Legbreak googly', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR7', 'T5', 'Shashank Singh', 31, 'India', 'Batsman', 264, 'Right_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR8', 'T5', 'Mahipal Lomror', 29, 'India', 'Bowler', 213, 'NULL', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR9', 'T5', 'Manan Vohra', 30, 'India', 'All-Rounder', 229, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR10', 'T5', 'Riyan Parag', 35, 'India', 'Batsman', 249, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR11', 'T5', 'Shreyas Gopal', 32, 'India', 'Bowler', 240, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR12', 'T5', 'Mayank Markande', 37, 'India', 'All-Rounder', 241, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'RR13', 'T5', 'Rahul Tewatia', 39, 'India', 'Batsman', 282, 'Right_Hand', 'Right-arm fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP1', 'T4', 'KL Rahul', 22, 'India', 'Bowler', 207, 'NULL', 'Legbreak googly', 'C7', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP2', 'T4', 'Karun Nair', 35, 'India', 'All-Rounder', 267, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP3', 'T4', 'Mohammad Shami', 27, 'India', 'Batsman', 276, 'Right_Hand', 'Right-arm bowler', 'NULL', 'W17' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP4', 'T4', 'Nicholas Pooran', 31, 'West Indies', 'Bowler', 282, 'NULL', 'Left-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP5', 'T4', 'Mujeeb Zadran', 21, 'Afghanistan', 'All-Rounder', 296, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP6', 'T4', 'Chris Gayle', 27, 'West Indies', 'Batsman', 238, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP7', 'T4', 'Mandeep Singh', 36, 'India', 'Bowler', 229, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP8', 'T4', 'Mayank Agarwal', 29, 'India', 'All-Rounder', 273, 'Left_Hand', 'Left-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP9', 'T4', 'Hardus Viljoen', 29, 'South Africa', 'Batsman', 264, 'Left_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP10', 'T4', 'Darshan Nalkande', 40, 'India', 'Bowler', 248, 'NULL', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP11', 'T4', 'Sarfaraz Khan', 21, 'India', 'All-Rounder', 247, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP12', 'T4', 'Arshdeep Singh', 40, 'India', 'Batsman', 285, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP13', 'T4', 'Harpreet Brar', 33, 'India', 'Batsman', 211, 'Left_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP14', 'T4', 'Murugan Ashwin', 33, 'India', 'All-Rounder', 289, 'Left_Hand', 'Slow left-arm orthodox', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP15', 'T4', 'Jagadeesha Suchith', 33, 'India', 'Batsman', 300, 'Left_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'KXIP16', 'T4', 'Krishnappa Gowtham', 30, 'India', 'Bowler', 225, 'NULL', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH1', 'T8', 'Manish Pandey', 39, 'India', 'All-Rounder', 235, 'Right_Hand', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH2', 'T8', 'Rashid Khan', 33, 'Afghanistan', 'Batsman', 233, 'Right_Hand', 'Legbreak googly', 'NULL', 'W18' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH3', 'T8', 'Bhuvneshwar Kumar', 20, 'India', 'Bowler', 288, 'NULL', 'Legbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH4', 'T8', 'Siddarth Kaul', 29, 'India', 'Batsman', 283, 'Right_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH5', 'T8', 'Shahbaz Nadeem', 26, 'India', 'Batsman', 276, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH6', 'T8', 'Vijay Shankar', 21, 'India', 'Bowler', 261, 'NULL', 'Left-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH7', 'T8', 'Kane Williamson', 33, 'New Zealand', 'All-Rounder', 272, 'Left_Hand', 'Right-arm fast-medium', 'C8', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH8', 'T8', 'Khaleel Ahmed', 26, 'India', 'Batsman', 268, 'Right_Hand', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH9', 'T8', 'Sandeep Sharma', 22, 'India', 'Bowler', 215, 'NULL', 'Right-arm fast-medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH10', 'T8', 'Jonny Bairstow', 25, 'England', 'All-Rounder', 289, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH11', 'T8', 'Wriddhiman Saha', 26, 'India', 'Batsman', 230, 'Right_Hand', 'Right-arm offbreak', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH12', 'T8', 'Mohammad Nabi', 40, 'Afghanistan', 'Bowler', 298, 'NULL', 'Right-arm fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH13', 'T8', 'Shreevats Goswami', 32, 'India', 'Batsman', 203, 'Right_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH14', 'T8', 'Basil Thampi', 25, 'India', 'Batsman', 286, 'Right_Hand', 'Legbreak googly', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH15', 'T8', 'Abhishek Sharma', 24, 'India', 'Batsman', 293, 'Right_Hand', 'NULL', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH16', 'T8', 'Billy Stanlake', 35, 'Australia', 'All-Rounder', 265, 'Right_Hand', 'Right-arm medium-fast', 'NULL', 'NULL' 
);

INSERT INTO PLAYER(P_Id, T_Id, P_Name, P_Age, P_Country, P_Designation, Matches_played, Batting_Skill, Bowling_Skill, Captain, Wicketkeeper) 
VALUES 
( 
'SRH17', 'T8', 'Thangarasu Natarajan', 28, 'India', 'Batsman', 263, 'Right_Hand', 'Right-arm medium', 'NULL', 'NULL' 
);

select * from PLAYER;

CREATE TABLE UMPIRE( 
U_Id VARCHAR(100) primary key, 
U_Name VARCHAR(100), 
DOB date, 
Experience number 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U1', 'Chris Gaffaney', '04-Jan-97', 12 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U2', 'Anil Chaudhary', '18-Mar-97', 15 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U3', 'Anil Dandekar', '07-Oct-96', 11 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U4', 'Chettithody Shamshuddin', '04-Jun-97', 20 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U5', 'KN Ananthapadmanabhan', '06-Jul-95', 16 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U6', 'Richard Illingworth', '12-Sep-96', 14 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U7', 'Nitin Menon', '25-Sep-96', 13 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U8', 'Virender Sharma', '25-Sep-95', 19 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U9', 'Vineet Kulkarni', '23-Jul-96', 11 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U10', 'Ulhas Gandhe', '20-Aug-96', 13 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U11', 'Yeshwant Barde', '14-Apr-96', 16 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U12', 'Pashchim Pathak', '08-Jan-96', 12 
);

INSERT INTO UMPIRE(U_Id, U_Name, DOB, Experience) 
VALUES 
( 
'U13', 'Paul Reiffel', '31-Jul-96', 11 
);

select * from UMPIRE;

CREATE TABLE STATS_OF_BATSMAN( 
P_Id VARCHAR(100) primary key, 
Total_Runs NUMBER, 
Avg_Run_Rate NUMBER, 
Innings_played NUMBER, 
foreign key (P_Id) references PLAYER(P_Id) 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK1', 577, 70, 28 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK2', 622, 79, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK3', 375, 82, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK4', 567, 64, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK5', 486, 112, 29 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK6', 353, 94, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK7', 495, 102, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK8', 413, 85, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK9', 361, 116, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK10', 569, 98, 20 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK11', 464, 61, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK12', 420, 66, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK13', 486, 110, 29 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK14', 494, 98, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK15', 603, 76, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK16', 361, 88, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK17', 464, 104, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK18', 485, 91, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK19', 365, 69, 16 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'CSK20', 631, 102, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB1', 539, 78, 20 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB2', 402, 80, 14 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB3', 647, 62, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB4', 515, 79, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB5', 362, 84, 13 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB6', 564, 63, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB7', 371, 95, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB8', 596, 63, 26 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB9', 494, 115, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB10', 543, 101, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB11', 612, 81, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB12', 630, 117, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB13', 534, 88, 15 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RCB14', 596, 73, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC1', 560, 108, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC2', 572, 89, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC3', 633, 117, 24 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC4', 497, 114, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC5', 586, 82, 12 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC6', 367, 91, 13 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC7', 488, 91, 28 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC8', 513, 95, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC9', 582, 66, 14 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC10', 629, 109, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC11', 441, 84, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC12', 522, 106, 29 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC13', 513, 53, 13 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC14', 368, 107, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'DC15', 592, 52, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI1', 444, 72, 25 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI2', 386, 74, 22 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI3', 485, 111, 27 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI4', 583, 104, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI5', 411, 57, 14 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI6', 418, 67, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI7', 589, 96, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI8', 420, 53, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI9', 351, 79, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI10', 484, 69, 22 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI11', 557, 82, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI12', 426, 62, 28 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI13', 397, 82, 25 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI14', 628, 105, 13 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI15', 566, 53, 12 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI16', 580, 53, 16 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI17', 524, 63, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'MI18', 632, 105, 26 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR1', 527, 99, 24 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR2', 412, 119, 29 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR3', 437, 72, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR4', 475, 75, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR5', 352, 84, 25 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR6', 541, 78, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR7', 409, 107, 25 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR8', 488, 107, 29 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR9', 578, 104, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR10', 547, 99, 27 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR11', 472, 76, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR12', 500, 60, 16 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR13', 507, 74, 28 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KKR14', 350, 55, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR1', 488, 95, 24 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR2', 393, 52, 20 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR3', 482, 66, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR4', 598, 113, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR5', 352, 61, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR6', 483, 73, 20 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR7', 389, 102, 12 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR8', 569, 108, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR9', 515, 108, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR10', 495, 72, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR11', 499, 62, 28 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR12', 370, 51, 14 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'RR13', 649, 62, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP1', 498, 50, 15 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP2', 473, 99, 15 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP3', 540, 59, 16 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP4', 577, 94, 25 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP5', 643, 92, 16 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP6', 479, 116, 24 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP7', 596, 68, 14 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP8', 373, 70, 22 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP9', 554, 76, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP10', 631, 114, 24 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP11', 395, 59, 30 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP12', 391, 58, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP13', 582, 60, 14 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP14', 354, 86, 23 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP15', 439, 88, 29 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'KXIP16', 361, 113, 16 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH1', 390, 66, 15 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH2', 472, 119, 20 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH3', 589, 113, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH4', 360, 92, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH5', 643, 103, 19 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH6', 484, 103, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH7', 593, 51, 10 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH8', 578, 96, 11 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH9', 606, 110, 12 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH10', 429, 109, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH11', 440, 108, 15 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH12', 597, 72, 17 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH13', 535, 51, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH14', 576, 112, 15 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH15', 586, 66, 18 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH16', 361, 72, 21 
);

INSERT INTO STATS_OF_BATSMAN(P_Id, Total_Runs, Avg_Run_Rate, Innings_played) 
VALUES 
( 
'SRH17', 543, 115, 28 
);

select * from STATS_OF_BATSMAN;

CREATE TABLE STATS_OF_BOWLER( 
P_Id VARCHAR(100) primary key, 
Overs_played NUMBER, 
Wickets_taken NUMBER, 
Catches NUMBER, 
foreign key (P_Id) references PLAYER(P_Id) 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK1', 196, 49, 20 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK2', 134, 17, 6 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK3', 187, 48, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK4', 183, 38, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK5', 196, 16, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK6', 119, 13, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK7', 100, 34, 5 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK8', 198, 30, 6 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK9', 158, 31, 5 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK10', 198, 12, 4 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK11', 188, 7, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK12', 200, 33, 4 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK13', 120, 40, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK14', 113, 45, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK15', 161, 23, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK16', 145, 17, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK17', 140, 3, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK18', 150, 12, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK19', 182, 34, 4 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'CSK20', 106, 21, 20 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB1', 168, 15, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB2', 113, 48, 5 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB3', 131, 3, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB4', 149, 35, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB5', 177, 21, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB6', 192, 18, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB7', 196, 46, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB8', 150, 5, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB9', 194, 9, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB10', 143, 10, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB11', 197, 11, 6 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB12', 192, 33, 16 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB13', 194, 9, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RCB14', 166, 5, 4 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC1', 170, 3, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC2', 179, 20, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC3', 134, 2, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC4', 198, 34, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC5', 119, 15, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC6', 113, 49, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC7', 173, 10, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC8', 185, 31, 11 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC9', 151, 34, 19 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC10', 134, 38, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC11', 149, 38, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC12', 172, 10, 19 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC13', 115, 21, 7 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC14', 175, 3, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'DC15', 105, 50, 19 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI1', 124, 30, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI2', 114, 20, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI3', 176, 14, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI4', 128, 41, 11 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI5', 193, 28, 8 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI6', 140, 46, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI7', 106, 30, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI8', 118, 46, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI9', 162, 29, 6 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI10', 114, 30, 19 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI11', 178, 9, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI12', 106, 47, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI13', 101, 8, 7 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI14', 140, 36, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI15', 145, 29, 20 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI16', 190, 49, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI17', 148, 16, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'MI18', 117, 17, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR1', 106, 28, 20 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR2', 112, 28, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR3', 181, 25, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR4', 128, 17, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR5', 143, 32, 4 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR6', 129, 27, 7 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR7', 117, 31, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR8', 113, 32, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR9', 196, 16, 16 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR10', 199, 29, 4 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR11', 164, 12, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR12', 156, 33, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR13', 141, 50, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KKR14', 121, 37, 5 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR1', 103, 19, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR2', 160, 40, 20 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR3', 134, 43, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR4', 153, 16, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR5', 132, 9, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR6', 135, 24, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR7', 157, 48, 7 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR8', 153, 32, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR9', 105, 44, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR10', 188, 45, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR11', 156, 46, 5 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR12', 103, 50, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'RR13', 150, 47, 6 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP1', 102, 31, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP2', 104, 13, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP3', 154, 39, 3 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP4', 145, 24, 16 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP5', 149, 7, 9 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP6', 128, 10, 6 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP7', 181, 50, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP8', 139, 10, 16 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP9', 117, 21, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP10', 186, 10, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP11', 122, 47, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP12', 101, 47, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP13', 137, 13, 20 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP14', 123, 29, 14 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP15', 189, 40, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'KXIP16', 148, 38, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH1', 121, 41, 18 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH2', 185, 43, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH3', 112, 44, 11 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH4', 161, 6, 11 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH5', 172, 35, 6 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH6', 186, 46, 20 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH7', 169, 7, 9 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH8', 151, 13, 15 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH9', 129, 30, 10 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH10', 120, 39, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH11', 136, 15, 11 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH12', 169, 34, 12 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH13', 126, 32, 5 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH14', 136, 39, 17 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH15', 159, 10, 13 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH16', 129, 10, 5 
);

INSERT INTO STATS_OF_BOWLER(P_Id, Overs_played, Wickets_taken, Catches) 
VALUES 
( 
'SRH17', 144, 2, 15 
);

select * STATS_OF_BOWLER;

select * from STATS_OF_BOWLER;

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
Capacity number, 
check(in Capacity('Yes','yes', 'no','No')), 
Eatery_Arrangement VARCHAR(100) 
);

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
V_Capacity number, 
check(in Capacity('Yes','yes', 'no','No')), 
Eatery_Arrangement VARCHAR(100) 
);

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
V_Capacity number, 
check(in V_Capacity('Yes','yes', 'no','No')), 
Eatery_Arrangement VARCHAR(100) 
);

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
V_Capacity number, 
Eatery_Arrangement VARCHAR(100) 
);

drop table VENUE;

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
V_Capacity number, 
Eatery_Arrangement VARCHAR(100), 
check(Eatery_Arrangement('Yes','yes', 'no','No')) 
);

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
V_Capacity number, 
Eatery_Arrangement VARCHAR(100), 
check(in Eatery_Arrangement('Yes','yes', 'no','No')) 
);

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
V_Capacity number, 
Eatery_Arrangement VARCHAR(100), 
check(Eatery_Arrangement in('Yes','yes', 'no','No')) 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V1', 'Sheikh Zayed Stadium', 651, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V2', 'Dubai International Cricket Stadium', 672, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V3', 'Sharjah Cricket Stadium', 489, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V4', 'Rajiv Gandhi International Stadium', 384, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V5', 'Maharashtra Cricket Association Stadium', 466, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V6', 'Saurashtra Cricket Association Stadium', 696, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V7', 'Holkar Cricket Stadium', 675, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V8', 'M Chinnaswamy Stadium', 581, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V9', 'Wankhede Stadium', 642, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V10', 'Eden Gardens', 563, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V11', 'Feroz Shah Kotla', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V12', 'Punjab Cricket Association IS Bindra Stadium', 388, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V13', 'Green Park', 366, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V14', 'Punjab Cricket Association Stadium', 596, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V15', 'Sawai Mansingh Stadium', 631, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V16', 'MA Chidambaram Stadium', 650, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V17', 'Dr DY Patil Sports Academy', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V18', 'Newlands', 585, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V19', 'St George\'s Park', 552, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V20', 'Kingsmead', 362, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V21', 'SuperSport Park', 600, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V22', 'Buffalo Park', 439, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V23', 'New Wanderers Stadium', 685, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V24', 'De Beers Diamond Oval', 423, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V25', 'OUTsurance Oval', 607, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V26', 'Brabourne Stadium', 485, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V27', 'Sardar Patel Stadium', 487, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V28', 'Barabati Stadium', 562, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V29', 'Vidarbha Cricket Association Stadium', 418, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V30', 'Himachal Pradesh Cricket Association Stadium', 429, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V31', 'Nehru Stadium', 455, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V32', 'Rajasekhara Reddy ACA-VDCA Cricket Stadium', 395, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V33', 'Subrata Roy Sahara Stadium', 613, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, Capacity, Eatery_Arrangement) 
VALUES 
( 
'V34', 'RR Nehru Stadium', 469, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V1', 'Sheikh Zayed Stadium', 651, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V2', 'Dubai International Cricket Stadium', 672, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V3', 'Sharjah Cricket Stadium', 489, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V4', 'Rajiv Gandhi International Stadium', 384, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V5', 'Maharashtra Cricket Association Stadium', 466, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V6', 'Saurashtra Cricket Association Stadium', 696, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V7', 'Holkar Cricket Stadium', 675, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V8', 'M Chinnaswamy Stadium', 581, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V9', 'Wankhede Stadium', 642, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V10', 'Eden Gardens', 563, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V11', 'Feroz Shah Kotla', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V12', 'Punjab Cricket Association IS Bindra Stadium', 388, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V13', 'Green Park', 366, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V14', 'Punjab Cricket Association Stadium', 596, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V15', 'Sawai Mansingh Stadium', 631, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V16', 'MA Chidambaram Stadium', 650, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V17', 'Dr DY Patil Sports Academy', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V18', 'Newlands', 585, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V19', 'St George\'s Park', 552, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V20', 'Kingsmead', 362, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V21', 'SuperSport Park', 600, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V22', 'Buffalo Park', 439, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V23', 'New Wanderers Stadium', 685, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V24', 'De Beers Diamond Oval', 423, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V25', 'OUTsurance Oval', 607, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V26', 'Brabourne Stadium', 485, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V27', 'Sardar Patel Stadium', 487, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V28', 'Barabati Stadium', 562, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V29', 'Vidarbha Cricket Association Stadium', 418, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V30', 'Himachal Pradesh Cricket Association Stadium', 429, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V31', 'Nehru Stadium', 455, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V32', 'Rajasekhara Reddy ACA-VDCA Cricket Stadium', 395, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V33', 'Subrata Roy Sahara Stadium', 613, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V34', 'RR Nehru Stadium', 469, 'Yes' 
);

drop table VENUE;

CREATE TABLE VENUE( 
V_Id VARCHAR(100), 
Stadium_name VARCHAR(100), 
V_Capacity DOUBLE, 
Eatery_Arrangement VARCHAR(100) 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V1', 'Sheikh Zayed Stadium', 651, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V2', 'Dubai International Cricket Stadium', 672, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V3', 'Sharjah Cricket Stadium', 489, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V4', 'Rajiv Gandhi International Stadium', 384, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V5', 'Maharashtra Cricket Association Stadium', 466, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V6', 'Saurashtra Cricket Association Stadium', 696, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V7', 'Holkar Cricket Stadium', 675, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V8', 'M Chinnaswamy Stadium', 581, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V9', 'Wankhede Stadium', 642, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V10', 'Eden Gardens', 563, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V11', 'Feroz Shah Kotla', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V12', 'Punjab Cricket Association IS Bindra Stadium', 388, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V13', 'Green Park', 366, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V14', 'Punjab Cricket Association Stadium', 596, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V15', 'Sawai Mansingh Stadium', 631, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V16', 'MA Chidambaram Stadium', 650, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V17', 'Dr DY Patil Sports Academy', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V18', 'Newlands', 585, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V19', 'St George Park', 552, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V20', 'Kingsmead', 362, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V21', 'SuperSport Park', 600, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V22', 'Buffalo Park', 439, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V23', 'New Wanderers Stadium', 685, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V24', 'De Beers Diamond Oval', 423, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V25', 'OUTsurance Oval', 607, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V26', 'Brabourne Stadium', 485, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V27', 'Sardar Patel Stadium', 487, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V28', 'Barabati Stadium', 562, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V29', 'Vidarbha Cricket Association Stadium', 418, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V30', 'Himachal Pradesh Cricket Association Stadium', 429, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V31', 'Nehru Stadium', 455, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V32', 'Rajasekhara Reddy ACA-VDCA Cricket Stadium', 395, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V33', 'Subrata Roy Sahara Stadium', 613, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V34', 'RR Nehru Stadium', 469, 'Yes' 
);

CREATE TABLE VENUE( 
V_Id VARCHAR(100) primary key, 
Stadium_name VARCHAR(100), 
V_Capacity number, 
Eatery_Arrangement VARCHAR(100), 
check(Eatery_Arrangement in('Yes','yes', 'no','No')) 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V1', 'Sheikh Zayed Stadium', 651, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V2', 'Dubai International Cricket Stadium', 672, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V3', 'Sharjah Cricket Stadium', 489, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V4', 'Rajiv Gandhi International Stadium', 384, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V5', 'Maharashtra Cricket Association Stadium', 466, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V6', 'Saurashtra Cricket Association Stadium', 696, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V7', 'Holkar Cricket Stadium', 675, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V8', 'M Chinnaswamy Stadium', 581, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V9', 'Wankhede Stadium', 642, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V10', 'Eden Gardens', 563, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V11', 'Feroz Shah Kotla', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V12', 'Punjab Cricket Association IS Bindra Stadium', 388, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V13', 'Green Park', 366, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V14', 'Punjab Cricket Association Stadium', 596, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V15', 'Sawai Mansingh Stadium', 631, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V16', 'MA Chidambaram Stadium', 650, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V17', 'Dr DY Patil Sports Academy', 385, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V18', 'Newlands', 585, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V19', 'St George Park', 552, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V20', 'Kingsmead', 362, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V21', 'SuperSport Park', 600, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V22', 'Buffalo Park', 439, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V23', 'New Wanderers Stadium', 685, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V24', 'De Beers Diamond Oval', 423, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V25', 'OUTsurance Oval', 607, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V26', 'Brabourne Stadium', 485, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V27', 'Sardar Patel Stadium', 487, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V28', 'Barabati Stadium', 562, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V29', 'Vidarbha Cricket Association Stadium', 418, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V30', 'Himachal Pradesh Cricket Association Stadium', 429, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V31', 'Nehru Stadium', 455, 'No' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V32', 'Rajasekhara Reddy ACA-VDCA Cricket Stadium', 395, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V33', 'Subrata Roy Sahara Stadium', 613, 'Yes' 
);

INSERT INTO VENUE(V_Id, Stadium_name, V_Capacity, Eatery_Arrangement) 
VALUES 
( 
'V34', 'RR Nehru Stadium', 469, 'Yes' 
);

select * from VENUE;

CREATE TABLE SEASON( 
Season_Id number primary key, 
S_Year number, 
S_Country VARCHAR(100), 
Orange_Cap_Id VARCHAR(100), 
Purple_Cap_Id VARCHAR(100), 
Man_of_the_Series_Id VARCHAR(100) 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
1, 2008, 'INDIA', 'CSK1', 'KXIP2', 'CSK1' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
2, 2009, 'INDIA', 'RCB2', 'RR6', 'RCB2' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
3, 2010, 'INDIA', 'DC3', 'CSK5', 'CSK1' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
4, 2011, 'INDIA', 'RCB1', 'CSK1', 'MI2' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
5, 2012, 'INDIA', 'CSK4', 'MI10', 'MI1' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
6, 2013, 'INDIA', 'MI1', 'KKR4', 'MI5' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
7, 2014, 'DUBAI', 'KKR10', 'SRH5', 'DC1' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
8, 2015, 'INDIA', 'RR7', 'DC5', 'CSK4' 
);

INSERT INTO SEASON(Season_Id, S_Year, S_Country, Orange_Cap_Id, Purple_Cap_Id, Man_of_the_Series_Id) 
VALUES 
( 
9, 2016, 'INDIA', 'KXIP2', 'RCB10', 'CSK2' 
);

select * from SEASON;

CREATE TABLE MATCH_INFO( 
M_Id VARCHAR(100) primary key, 
Season_Id number, 
City_Name VARCHAR(100), 
V_Id VARCHAR(100), 
M_Date Date, 
Start_Time VARCHAR(100), 
End_Time VARCHAR(100), 
foreign key (Season_Id) references SEASON(Season_Id), 
foreign key (V_Id) references VENUE(V_Id) 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M1', 2, 'Abu Dhabi', 'V1', '8-Jun-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M2', 1, 'Dubai (DSC)', 'V2', '4-Jun-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M3', 5, 'Dubai (DSC)', 'V3', '20-Jun-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M4', 7, 'Sharjah', 'V4', '30-Apr-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M5', 9, 'Abu Dhabi', 'V5', '17-Jun-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M6', 5, 'Dubai (DSC)', 'V6', '4-May-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M7', 3, 'Dubai (DSC)', 'V7', '12-May-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M8', 6, 'Abu Dhabi', 'V8', '6-May-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M9', 5, 'Sharjah', 'V9', '8-May-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M10', 2, 'Dubai (DSC)', 'V10', '7-Jun-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M11', 4, 'Abu Dhabi', 'V11', '8-May-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M12', 8, 'Dubai (DSC)', 'V1', '12-May-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M13', 2, 'Abu Dhabi', 'V2', '14-Apr-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M14', 3, 'Dubai (DSC)', 'V3', '13-Jun-2020', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M15', 3, 'Hyderabad', 'V4', '23-Jun-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M16', 7, 'Chennai', 'V5', '18-Jun-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M17', 1, 'Hyderabad', 'V6', '20-Apr-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M18', 2, 'Chandigarh', 'V7', '19-Jun-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M19', 3, 'Bangalore', 'V20', '18-May-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M20', 6, 'Chennai', 'V21', '9-Jun-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M21', 3, 'Mumbai', 'V22', '30-May-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M22', 7, 'Chandigarh', 'V23', '16-Jun-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M23', 7, 'Bangalore', 'V24', '21-May-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M24', 9, 'Kolkata', 'V25', '14-Jun-2018', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M25', 4, 'Delhi', 'V26', '13-Apr-2017', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M26', 1, 'Hyderabad', 'V13', '3-May-2017', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M27', 2, 'Jaipur', 'V14', '20-Jun-2017', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M28', 8, 'Chennai', 'V15', '5-Jun-2017', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M29', 3, 'Hyderabad', 'V16', '27-Apr-2017', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M30', 5, 'Chandigarh', 'V17', '23-Apr-2017', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M31', 5, 'Mumbai', 'V18', '30-May-2017', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M32', 2, 'Jaipur', 'V19', '13-May-2016', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M33', 4, 'Bangalore', 'V20', '24-Jun-2016', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M34', 4, 'Chennai', 'V5', '12-May-2016', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M35', 3, 'Mumbai', 'V6', '20-May-2016', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M36', 8, 'Delhi', 'V7', '8-May-2016', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M37', 5, 'Kolkata', 'V8', '21-Apr-2016', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M38', 2, 'Jaipur', 'V9', '10-May-2016', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M39', 2, 'Bangalore', 'V10', '20-Jun-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M40', 1, 'Chennai', 'V11', '13-Jun-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M41', 9, 'Hyderabad', 'V12', '7-Jun-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M42', 5, 'Jaipur', 'V13', '2-Jun-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M43', 8, 'Chandigarh', 'V20', '23-Apr-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M44', 8, 'Kolkata', 'V21', '15-Apr-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M45', 1, 'Mumbai', 'V22', '23-May-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M46', 4, 'Chandigarh', 'V23', '24-Apr-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M47', 2, 'Delhi', 'V24', '26-Apr-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M48', 6, 'Mumbai', 'V25', '1-Jun-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M49', 8, 'Delhi', 'V26', '15-Jun-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M50', 9, 'Jaipur', 'V27', '17-May-2015', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M51', 5, 'Chennai', 'V28', '21-Apr-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M52', 6, 'Bangalore', 'V29', '23-Jun-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M53', 8, 'Kolkata', 'V30', '27-Apr-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M54', 7, 'Jaipur', 'V15', '16-May-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M55', 3, 'Hyderabad', 'V16', '16-Apr-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M56', 5, 'Mumbai', 'V17', '10-May-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M57', 4, 'Mumbai', 'V18', '9-Jun-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M58', 8, 'Mumbai', 'V19', '14-Jun-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M59', 6, 'Cape Town', 'V20', '13-Apr-2014', '18:00:00', '23:00:00' 
);

INSERT INTO MATCH_INFO(M_Id, Season_Id, City_Name, V_Id, M_Date, Start_Time, End_Time) 
VALUES 
( 
'M60', 7, 'Cape Town', 'V21', '24-Jun-2014', '18:00:00', '23:00:00' 
);

select * from MATCH_INFO;

CREATE TABLE BALL_BY_BALL( 
M_Id VARCHAR(100), 
Over_Id number, 
Ball_Id number, 
B_Num number, 
Runs number, 
Out VARCHAR(100), 
Catch VARCHAR(100), 
Run_out VARCHAR(100), 
primary key(M_Id,Over_Id,Ball_Id), 
foreign key M_Id references MATCH_INFO(M_Id) 
);

CREATE TABLE BALL_BY_BALL( 
M_Id VARCHAR(100), 
Over_Id number, 
Ball_Id number, 
B_Num number, 
Runs number, 
P_Out VARCHAR(100), 
Catch VARCHAR(100), 
Run_out VARCHAR(100), 
primary key(M_Id,Over_Id,Ball_Id), 
foreign key M_Id references MATCH_INFO(M_Id) 
);

CREATE TABLE BALL_BY_BALL( 
M_Id VARCHAR(100), 
Over_Id number, 
Ball_Id number, 
B_Num number, 
Runs number, 
P_Out VARCHAR(100), 
Catch VARCHAR(100), 
Run_out VARCHAR(100), 
primary key(M_Id,Over_Id,Ball_Id), 
foreign key (M_Id) references MATCH_INFO(M_Id) 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M2', 1, 2, 28, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M3', 1, 3, 40, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M4', 1, 4, 74, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M5', 1, 5, 6, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M6', 1, 6, 69, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M7', 1, 7, 3, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M8', 2, 1, 58, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M9', 2, 2, 37, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M10', 2, 3, 10, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M11', 2, 4, 27, 6, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M12', 2, 5, 28, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M13', 2, 6, 70, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M14', 3, 1, 36, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M15', 3, 2, 65, 0, 'Yes', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M16', 3, 3, 51, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M17', 3, 4, 23, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M18', 3, 5, 41, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M19', 3, 6, 70, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M20', 4, 1, 54, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M21', 4, 2, 5, 6, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M22', 4, 3, 86, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M23', 4, 4, 28, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M24', 4, 5, 20, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M25', 4, 6, 79, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M26', 4, 7, 56, 6, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M27', 5, 1, 79, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M28', 5, 2, 48, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M29', 5, 3, 80, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M30', 5, 4, 2, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M31', 5, 5, 22, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M32', 5, 6, 64, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M33', 6, 1, 29, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M34', 6, 2, 17, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M35', 6, 3, 90, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M36', 6, 4, 96, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M37', 6, 5, 9, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M38', 6, 6, 57, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M39', 7, 1, 15, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M40', 7, 2, 71, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M41', 7, 3, 55, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M42', 7, 4, 67, 2, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M43', 7, 5, 75, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M44', 7, 6, 58, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M45', 8, 1, 100, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M46', 8, 2, 64, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M47', 8, 3, 43, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M48', 8, 4, 28, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M49', 8, 5, 30, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M50', 8, 6, 94, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M51', 9, 1, 45, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M52', 9, 2, 62, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M53', 9, 3, 78, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M54', 9, 4, 12, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M55', 9, 5, 46, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M56', 9, 6, 11, 2, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M57', 10, 1, 97, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M58', 10, 2, 75, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M59', 10, 3, 8, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M60', 10, 4, 94, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M1', 10, 5, 55, 6, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M2', 10, 6, 77, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M3', 11, 1, 64, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M4', 11, 2, 6, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M5', 11, 3, 36, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M6', 11, 4, 20, 6, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M7', 11, 5, 54, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M8', 11, 6, 5, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M9', 12, 1, 4, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M10', 12, 2, 39, 6, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M11', 12, 3, 45, 2, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M12', 12, 4, 43, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M13', 12, 5, 90, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M14', 12, 6, 90, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M15', 13, 1, 66, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M16', 13, 2, 8, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M17', 13, 3, 66, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M18', 13, 4, 12, 2, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M19', 13, 5, 16, 0, 'Yes', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M20', 13, 6, 90, 4, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M21', 13, 7, 32, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M22', 14, 1, 19, 1, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M23', 14, 2, 68, 0, 'No', 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M24', 14, 3, 81, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M25', 14, 4, 67, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M26', 14, 5, 83, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M27', 14, 6, 33, 2, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M28', 15, 1, 93, 4, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M29', 15, 2, 73, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M30', 15, 3, 33, 6, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M31', 15, 4, 50, 4, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M32', 15, 5, 61, 0, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M33', 15, 6, 19, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M34', 15, 7, 42, 6, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M35', 16, 1, 44, 0, 'Yes', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M36', 16, 2, 85, 1, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M37', 16, 3, 92, 2, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M38', 16, 4, 46, 0, 'No', 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out Catch, Run_out) 
VALUES 
( 
'M39', 16, 5, 47, 1, 'No', 'Yes', 'No' 
);

P_Out


INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M2', 1, 2, 28, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M3', 1, 3, 40, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M4', 1, 4, 74, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M5', 1, 5, 6, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M6', 1, 6, 69, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M7', 1, 7, 3, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M8', 2, 1, 58, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M9', 2, 2, 37, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M10', 2, 3, 10, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M11', 2, 4, 27, 6, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M12', 2, 5, 28, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M13', 2, 6, 70, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M14', 3, 1, 36, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M15', 3, 2, 65, 0, 'Yes', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M16', 3, 3, 51, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M17', 3, 4, 23, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M18', 3, 5, 41, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M19', 3, 6, 70, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M20', 4, 1, 54, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M21', 4, 2, 5, 6, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M22', 4, 3, 86, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M23', 4, 4, 28, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M24', 4, 5, 20, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M25', 4, 6, 79, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M26', 4, 7, 56, 6, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M27', 5, 1, 79, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M28', 5, 2, 48, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M29', 5, 3, 80, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M30', 5, 4, 2, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M31', 5, 5, 22, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M32', 5, 6, 64, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M33', 6, 1, 29, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M34', 6, 2, 17, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M35', 6, 3, 90, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M36', 6, 4, 96, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M37', 6, 5, 9, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M38', 6, 6, 57, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M39', 7, 1, 15, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M40', 7, 2, 71, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M41', 7, 3, 55, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M42', 7, 4, 67, 2, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M43', 7, 5, 75, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M44', 7, 6, 58, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M45', 8, 1, 100, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M46', 8, 2, 64, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M47', 8, 3, 43, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M48', 8, 4, 28, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M49', 8, 5, 30, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M50', 8, 6, 94, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M51', 9, 1, 45, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M52', 9, 2, 62, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M53', 9, 3, 78, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M54', 9, 4, 12, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M55', 9, 5, 46, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M56', 9, 6, 11, 2, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M57', 10, 1, 97, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M58', 10, 2, 75, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M59', 10, 3, 8, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M60', 10, 4, 94, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M1', 10, 5, 55, 6, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M2', 10, 6, 77, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M3', 11, 1, 64, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M4', 11, 2, 6, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M5', 11, 3, 36, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M6', 11, 4, 20, 6, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M7', 11, 5, 54, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M8', 11, 6, 5, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M9', 12, 1, 4, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M10', 12, 2, 39, 6, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M11', 12, 3, 45, 2, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M12', 12, 4, 43, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M13', 12, 5, 90, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M14', 12, 6, 90, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M15', 13, 1, 66, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M16', 13, 2, 8, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M17', 13, 3, 66, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M18', 13, 4, 12, 2, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M19', 13, 5, 16, 0, 'Yes', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M20', 13, 6, 90, 4, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M21', 13, 7, 32, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M22', 14, 1, 19, 1, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M23', 14, 2, 68, 0, 'No', 'No', 'Yes' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M24', 14, 3, 81, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M25', 14, 4, 67, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M26', 14, 5, 83, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M27', 14, 6, 33, 2, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M28', 15, 1, 93, 4, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M29', 15, 2, 73, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M30', 15, 3, 33, 6, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M31', 15, 4, 50, 4, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M32', 15, 5, 61, 0, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M33', 15, 6, 19, 1, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M34', 15, 7, 42, 6, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M35', 16, 1, 44, 0, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M36', 16, 2, 85, 1, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M37', 16, 3, 92, 2, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M38', 16, 4, 46, 0, 'No', 'Yes', 'No' 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M39', 16, 5, 47, 1, 'No', 'Yes', 'No' 
);

drop table BALL_BY_BALL;

CREATE TABLE BALL_BY_BALL( 
M_Id VARCHAR(100), 
Over_Id number, 
Ball_Id number, 
B_Num number, 
Runs number, 
P_Out VARCHAR(100), 
Catch VARCHAR(100), 
Run_out VARCHAR(100), 
primary key(M_Id,Over_Id,Ball_Id), 
foreign key (M_Id) references MATCH_INFO(M_Id) 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_out) 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes', 'No' 
);

drop table BALL_BY_BALL;

CREATE TABLE BALL_BY_BALL( 
M_Id VARCHAR(100), 
Over_Id number, 
Ball_Id number, 
B_Num number, 
Runs number, 
P_Out VARCHAR(100), 
Catch VARCHAR(100), 
Run_outt VARCHAR(100), 
primary key(M_Id,Over_Id,Ball_Id), 
foreign key (M_Id) references MATCH_INFO(M_Id) 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_outt) 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes', 'No' 
);

INSERT INTO VENUE 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes', 'No' 
);

CREATE TABLE BALL_BY_BALL( 
M_Id VARCHAR(100), 
Over_Id number, 
Ball_Id number, 
B_Num number, 
Runs number, 
P_Out VARCHAR(100), 
Catch VARCHAR(100), 
Run_outt VARCHAR(100), 
primary key(M_Id,Over_Id,Ball_Id), 
foreign key (M_Id) references MATCH_INFO(M_Id) 
);

INSERT INTO VENUE(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch, Run_outt) 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes', 'No' 
);

desc TABLE BALL_BY_BALL( 


desc TABLE BALL_BY_BALL


drop table BALL_BY_BALL;

CREATE TABLE BALL_BY_BALL( 
M_Id VARCHAR(100), 
Over_Id number, 
Ball_Id number, 
B_Num number, 
Runs number, 
P_Out VARCHAR(100), 
Catch VARCHAR(100), 
primary key(M_Id,Over_Id,Ball_Id), 
foreign key (M_Id) references MATCH_INFO(M_Id) 
);

INSERT INTO table_name(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M1', 1, 1, 29, 0, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M2', 1, 2, 28, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M3', 1, 3, 40, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M4', 1, 4, 74, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M5', 1, 5, 6, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M6', 1, 6, 69, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M7', 1, 7, 3, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M8', 2, 1, 58, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M9', 2, 2, 37, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M10', 2, 3, 10, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M11', 2, 4, 27, 6, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M12', 2, 5, 28, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M13', 2, 6, 70, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M14', 3, 1, 36, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M15', 3, 2, 65, 0, 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M16', 3, 3, 51, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M17', 3, 4, 23, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M18', 3, 5, 41, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M19', 3, 6, 70, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M20', 4, 1, 54, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M21', 4, 2, 5, 6, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M22', 4, 3, 86, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M23', 4, 4, 28, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M24', 4, 5, 20, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M25', 4, 6, 79, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M26', 4, 7, 56, 6, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M27', 5, 1, 79, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M28', 5, 2, 48, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M29', 5, 3, 80, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M30', 5, 4, 2, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M31', 5, 5, 22, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M32', 5, 6, 64, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M33', 6, 1, 29, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M34', 6, 2, 17, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M35', 6, 3, 90, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M36', 6, 4, 96, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M37', 6, 5, 9, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M38', 6, 6, 57, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M39', 7, 1, 15, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M40', 7, 2, 71, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M41', 7, 3, 55, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M42', 7, 4, 67, 2, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M43', 7, 5, 75, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M44', 7, 6, 58, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M45', 8, 1, 100, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M46', 8, 2, 64, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M47', 8, 3, 43, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M48', 8, 4, 28, 1, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M49', 8, 5, 30, 1, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M50', 8, 6, 94, 1, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M51', 9, 1, 45, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M52', 9, 2, 62, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M53', 9, 3, 78, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M54', 9, 4, 12, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M55', 9, 5, 46, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M56', 9, 6, 11, 2, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M57', 10, 1, 97, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M58', 10, 2, 75, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M59', 10, 3, 8, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M60', 10, 4, 94, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M1', 10, 5, 55, 6, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M2', 10, 6, 77, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M3', 11, 1, 64, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M4', 11, 2, 6, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M5', 11, 3, 36, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M6', 11, 4, 20, 6, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M7', 11, 5, 54, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M8', 11, 6, 5, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M9', 12, 1, 4, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M10', 12, 2, 39, 6, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M11', 12, 3, 45, 2, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M12', 12, 4, 43, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M13', 12, 5, 90, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M14', 12, 6, 90, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M15', 13, 1, 66, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M16', 13, 2, 8, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M17', 13, 3, 66, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M18', 13, 4, 12, 2, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M19', 13, 5, 16, 0, 'Yes', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M20', 13, 6, 90, 4, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M21', 13, 7, 32, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M22', 14, 1, 19, 1, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M23', 14, 2, 68, 0, 'No', 'No' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M24', 14, 3, 81, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M25', 14, 4, 67, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M26', 14, 5, 83, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M27', 14, 6, 33, 2, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M28', 15, 1, 93, 4, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M29', 15, 2, 73, 1, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M30', 15, 3, 33, 6, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M31', 15, 4, 50, 4, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M32', 15, 5, 61, 0, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M33', 15, 6, 19, 1, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M34', 15, 7, 42, 6, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M35', 16, 1, 44, 0, 'Yes', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M36', 16, 2, 85, 1, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M37', 16, 3, 92, 2, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M38', 16, 4, 46, 0, 'No', 'Yes' 
);

INSERT INTO BALL_BY_BALL(M_Id, Over_Id, Ball_Id, B_Num, Runs, P_Out, Catch) 
VALUES 
( 
'M39', 16, 5, 47, 1, 'No', 'Yes' 
);

select * from BALL_BY BALL;

select * from BALL_BY_BALL;

CREATE TABLE MATCH_STATS( 
M_Id VARCHAR(100) primary key, 
Toss_Winner VARCHAR(100), 
Toss_Decision VARCHAR(100), 
check (Toss_Decision in ('bat','field')), 
Innings_Duration1 number(2,1), 
Innings_Duration2 number(2,1), 
Runs_By_T1 number, 
Runs_By_T2 number, 
Sixes number, 
Fours number, 
Super_Over VARCHAR(100), 
Man_of_match VARCHAR(100), 
Winner VARCHAR(100), 
Won_By number, 
foreign key M_Id references MATCH_INFO(M_Id) 
);

CREATE TABLE MATCH_STATS( 
M_Id VARCHAR(100) primary key, 
Toss_Winner VARCHAR(100), 
Toss_Decision VARCHAR(100), 
check (Toss_Decision in ('bat','field')), 
Innings_Duration1 number(2,1), 
Innings_Duration2 number(2,1), 
Runs_By_T1 number, 
Runs_By_T2 number, 
Sixes number, 
Fours number, 
Super_Over VARCHAR(100), 
Man_of_match VARCHAR(100), 
Winner VARCHAR(100), 
Won_By number, 
foreign key (M_Id) references MATCH_INFO(M_Id) 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M1', 'T3', 'field', 3, 2, 101, 100, 14, 30, 'No', 'AT Rayudu', 'T3', 1 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M2', 'T4', 'field', 3, 2, 150, 118, 11, 24, 'No', 'MP Stoinis', 'T6', 32 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M3', 'T8', 'field', 3, 2, 143, 161, 13, 26, 'No', 'YS Chahal', 'T2', 18 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M4', 'T3', 'field', 3, 2, 131, 169, 14, 24, 'No', 'SV Samson', 'T5', 38 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M5', 'T1', 'field', 3, 2, 149, 123, 10, 30, 'No', 'RG Sharma', 'T7', 26 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M6', 'T2', 'field', 3, 2, 133, 110, 13, 30, 'No', 'KL Rahul', 'T4', 23 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M7', 'T3', 'field', 3, 2, 155, 132, 10, 20, 'No', 'P Shaw', 'T6', 23 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M8', 'T8', 'bat', 3, 2, 127, 126, 13, 21, 'No', 'Shubman Gill', 'T1', 1 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M9', 'T5', 'field', 3.5, 2, 136, 131, 11, 20, 'No', 'SV Samson', 'T5', 5 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M10', 'T7', 'field', 3.5, 2, 127, 162, 10, 28, 'No', 'AB de Villiers', 'T2', 35 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M11', 'T6', 'field', 3.5, 2, 159, 135, 14, 30, 'No', 'Rashid Khan', 'T8', 24 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M12', 'T5', 'field', 3.5, 2, 179, 168, 13, 26, 'No', 'Shivam Mavi', 'T1', 11 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M13', 'T4', 'field', 3.5, 2, 140, 106, 10, 22, 'No', 'KA Pollard', 'T7', 34 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M14', 'T8', 'bat', 3.5, 2, 144, 116, 13, 27, 'No', 'Priyam Garg', 'T8', 28 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M15', 'T5', 'bat', 3.5, 2, 123, 168, 15, 26, 'No', 'YS Chahal', 'T2', 45 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M16', 'T1', 'field', 3.5, 2, 164, 120, 10, 28, 'No', 'SS Iyer', 'T6', 44 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M17', 'T7', 'bat', 2, 3, 171, 160, 12, 26, 'No', 'TA Boult', 'T7', 11 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M18', 'T4', 'bat', 2, 3, 134, 111, 15, 26, 'No', 'SR Watson', 'T3', 23 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M19', 'T2', 'field', 2, 3, 136, 172, 14, 27, 'Yes', 'AR  Patel', 'T6', 36 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M20', 'T7', 'bat', 2, 3, 157, 160, 15, 21, 'Yes', 'AS Yadav', 'T7', 3 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M21', 'T1', 'bat', 2, 3, 150, 115, 12, 25, 'No', 'RA Tripathi', 'T1', 35 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M22', 'T8', 'bat', 2, 3, 161, 180, 10, 23, 'No', 'J Bairstow', 'T8', 19 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M23', 'T5', 'field', 2, 3, 172, 133, 10, 26, 'No', 'R Ashwin', 'T6', 39 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M24', 'T1', 'bat', 2, 3, 169, 116, 12, 29, 'No', 'KD Karthik', 'T1', 53 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M25', 'T2', 'bat', 2, 3, 137, 140, 10, 23, 'No', 'V Kohli', 'T2', 3 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M26', 'T8', 'bat', 2, 3, 136, 168, 11, 22, 'No', 'R Tewatia', 'T5', 32 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M27', 'T6', 'bat', 2, 3, 168, 122, 15, 28, 'No', 'Q de Kock', 'T7', 46 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M28', 'T2', 'bat', 2, 3, 111, 109, 11, 28, 'No', 'AB de Villiers', 'T2', 2 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M29', 'T3', 'bat', 2, 3, 111, 102, 12, 29, 'No', 'RA Jadeja', 'T3', 9 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M30', 'T6', 'bat', 2.5, 2.5, 123, 150, 12, 28, 'No', 'Anrich Nortje', 'T6', 27 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M31', 'T2', 'bat', 2.5, 2.5, 155, 123, 11, 21, 'No', 'KL Rahul', 'T4', 32 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M32', 'T1', 'bat', 2.5, 2.5, 108, 120, 12, 22, 'No', 'Q de Kock', 'T7', 12 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M33', 'T5', 'bat', 2.5, 2.5, 175, 172, 13, 20, 'No', 'AB de Villiers', 'T2', 3 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M34', 'T3', 'bat', 2.5, 2.5, 165, 116, 15, 23, 'No', 'S Dhawan', 'T6', 49 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M35', 'T8', 'field', 2.5, 2.5, 160, 141, 15, 21, 'No', 'L Ferguson', 'T1', 19 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M36', 'T7', 'bat', 2.5, 2.5, 141, 116, 12, 21, 'No', 'KL Rahul', 'T4', 25 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M37', 'T3', 'bat', 2.5, 2.5, 169, 166, 12, 25, 'No', 'JC Buttler', 'T5', 3 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M38', 'T6', 'bat', 2.5, 2.5, 107, 109, 15, 23, 'No', 'S Dhawan', 'T4', 2 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M39', 'T1', 'bat', 2.5, 2.5, 123, 129, 10, 29, 'No', 'Mohammed Siraj', 'T2', 6 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M40', 'T8', 'field', 2.5, 2.5, 101, 179, 13, 21, 'No', 'MK Pandey', 'T8', 78 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M41', 'T7', 'field', 2.5, 2.5, 171, 126, 10, 29, 'No', 'TA Boult', 'T7', 45 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M42', 'T6', 'field', 2.5, 2.5, 105, 160, 12, 20, 'No', 'CV Varun', 'T1', 55 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M43', 'T8', 'field', 2.5, 2.5, 139, 158, 10, 25, 'No', 'CJ Jordan', 'T4', 19 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M44', 'T2', 'bat', 2.5, 2.5, 114, 166, 12, 21, 'No', 'RD Gaikwad', 'T3', 52 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M45', 'T7', 'bat', 2.5, 2.5, 157, 165, 12, 22, 'No', 'BA Stokes', 'T5', 8 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M46', 'T4', 'field', 2.5, 2.5, 115, 136, 13, 29, 'No', 'CH Gayle', 'T4', 21 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M47', 'T6', 'field', 2.5, 2.5, 111, 115, 13, 20, 'No', 'WP Saha', 'T8', 4 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M48', 'T7', 'field', 2.5, 2.5, 153, 172, 12, 29, 'No', 'AS Yadav', 'T7', 19 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M49', 'T3', 'field', 3, 2.5, 175, 166, 15, 30, 'No', 'RD Gaikwad', 'T3', 9 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M50', 'T5', 'field', 3, 2.5, 133, 169, 11, 29, 'No', 'BA Stokes', 'T5', 36 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M51', 'T7', 'field', 3, 2.5, 101, 154, 15, 27, 'No', 'Ishan Kishan', 'T7', 53 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M52', 'T8', 'field', 3, 2.5, 135, 161, 14, 21, 'No', 'Abhishek Sharma', 'T8', 26 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M53', 'T3', 'field', 3, 2.5, 106, 160, 12, 30, 'No', 'RD Gaikwad', 'T3', 54 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M54', 'T5', 'field', 3, 2.5, 166, 123, 12, 25, 'No', 'PJ CumT7ns', 'T1', 43 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M55', 'T6', 'field', 3, 2.5, 128, 158, 11, 29, 'No', 'Anrich Nortje', 'T6', 30 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M56', 'T8', 'field', 3, 2.5, 143, 166, 10, 25, 'No', 'S Nadeem', 'T8', 23 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M57', 'T6', 'field', 3, 2.5, 134, 122, 13, 27, 'No', 'JJ Bumrah', 'T7', 12 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M58', 'T8', 'field', 3, 2.5, 128, 136, 10, 24, 'No', 'KS Williamson', 'T8', 8 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M59', 'T6', 'bat', 3, 2.5, 139, 168, 11, 25, 'No', 'MP Stoinis', 'T6', 29 
);

INSERT INTO MATCH_STATS(M_Id, Toss_Winner, Toss_Decision, Innings_Duration1, Innings_Duration2, Runs_By_T1, Runs_By_T2, Sixes, Fours, Super_Over, Man_of_match, Winner, Won_By) 
VALUES 
( 
'M60', 'T6', 'bat', 3, 2.5, 139, 100, 10, 23, 'No', 'TA Boult', 'T7', 39 
);

select * from MATCH_STATS;

CREATE TABLE POST_MATCH_BATSMAN_STATS( 
M_Id VARCHAR(100), 
P_Id VARCHAR(100), 
T_Runs number, 
Run_rate number, 
No_Sixes number, 
No_Fours number, 
Out_At_Run number, 
primary key(M_Id,P_Id), 
foreign key (M_Id) references MATCH_INFO(M_Id), 
foreign key (P_Id) references PLAYER(P_Id) 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M1', 'CSK1', 62, 10, 1, 1, 32 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M2', 'CSK2', 93, 10, 1, 4, 70 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M3', 'CSK3', 78, 8, 0, 5, 65 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M4', 'CSK4', 55, 4, 0, 0, 54 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M5', 'CSK5', 49, 5, 2, 2, 28 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M6', 'CSK6', 25, 10, 0, 2, 64 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M7', 'CSK7', 80, 6, 1, 0, 43 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M8', 'CSK8', 22, 5, 0, 4, 39 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M9', 'CSK9', 49, 6, 1, 4, 40 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M10', 'CSK10', 86, 4, 2, 4, 32 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M11', 'CSK11', 31, 6, 0, 4, 86 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M12', 'CSK12', 57, 5, 2, 2, 32 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M13', 'CSK13', 61, 5, 0, 2, 40 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M14', 'CSK14', 63, 10, 3, 3, 47 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M15', 'CSK15', 38, 9, 3, 5, 15 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M16', 'CSK16', 86, 8, 0, 5, 99 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M17', 'CSK17', 33, 10, 2, 4, 43 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M18', 'CSK18', 57, 9, 0, 2, 17 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M19', 'CSK19', 86, 5, 3, 5, 83 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M20', 'CSK20', 23, 7, 0, 4, 62 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M21', 'RCB1', 72, 9, 3, 0, 49 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M22', 'RCB2', 81, 9, 0, 0, 71 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M23', 'RCB3', 65, 4, 3, 2, 25 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M24', 'RCB4', 88, 8, 3, 3, 39 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M25', 'RCB5', 82, 4, 0, 3, 29 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M26', 'RCB6', 24, 6, 0, 0, 40 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M27', 'RCB7', 89, 10, 3, 0, 48 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M28', 'RCB8', 50, 5, 1, 3, 20 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M29', 'RCB9', 43, 4, 1, 1, 52 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M30', 'RCB10', 67, 8, 2, 4, 37 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M31', 'RCB11', 80, 10, 1, 4, 34 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M32', 'RCB12', 65, 7, 0, 2, 17 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M33', 'RCB13', 58, 8, 2, 3, 91 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M34', 'RCB14', 55, 5, 0, 5, 30 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M35', 'DC1', 62, 7, 2, 2, 66 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M36', 'DC2', 89, 8, 3, 2, 48 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M37', 'DC3', 19, 6, 0, 1, 66 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M38', 'DC4', 32, 5, 3, 2, 91 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M39', 'DC5', 81, 10, 1, 0, 66 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M40', 'DC6', 50, 4, 2, 2, 75 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M41', 'DC7', 77, 5, 2, 2, 27 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M42', 'DC8', 32, 8, 3, 5, 34 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M43', 'DC9', 83, 7, 3, 1, 44 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M44', 'DC10', 76, 4, 3, 2, 67 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M45', 'DC11', 28, 5, 1, 0, 13 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M46', 'DC12', 34, 5, 2, 1, 56 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M47', 'DC13', 70, 7, 3, 2, 13 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M48', 'DC14', 24, 7, 1, 4, 24 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M49', 'DC15', 35, 4, 0, 0, 94 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M50', 'MI1', 83, 7, 1, 4, 41 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M51', 'MI2', 19, 6, 3, 0, 86 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M52', 'MI3', 29, 5, 0, 5, 64 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M53', 'MI4', 47, 4, 0, 4, 37 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M54', 'MI5', 79, 8, 3, 2, 65 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M55', 'MI6', 75, 5, 2, 1, 32 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M56', 'MI7', 25, 9, 1, 2, 23 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M57', 'MI8', 54, 7, 3, 1, 100 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M58', 'MI9', 47, 8, 1, 5, 72 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M59', 'MI10', 28, 7, 2, 1, 53 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M60', 'MI11', 27, 7, 1, 5, 87 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M1', 'MI12', 44, 7, 3, 3, 52 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M2', 'MI13', 32, 4, 2, 2, 99 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M3', 'MI14', 27, 10, 1, 0, 16 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M4', 'MI15', 34, 9, 0, 2, 79 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M5', 'MI16', 45, 6, 0, 0, 57 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M6', 'MI17', 32, 9, 1, 0, 92 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M7', 'MI18', 26, 7, 0, 2, 40 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M8', 'KKR1', 65, 10, 3, 2, 69 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M9', 'KKR2', 83, 6, 2, 0, 12 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M10', 'KKR3', 93, 9, 2, 4, 35 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M11', 'KKR4', 63, 7, 1, 1, 38 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M12', 'KKR5', 59, 4, 2, 3, 51 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M13', 'KKR6', 41, 4, 0, 2, 21 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M14', 'KKR7', 86, 5, 0, 3, 38 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M15', 'KKR8', 29, 10, 2, 4, 19 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M16', 'KKR9', 77, 9, 0, 3, 68 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M17', 'KKR10', 51, 4, 2, 0, 35 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M18', 'KKR11', 15, 7, 1, 0, 20 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M19', 'KKR12', 90, 5, 1, 5, 40 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M20', 'KKR13', 48, 4, 1, 3, 99 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M21', 'KKR14', 55, 10, 2, 0, 33 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M22', 'RR1', 91, 8, 1, 1, 79 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M23', 'RR2', 78, 4, 0, 1, 31 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M24', 'RR3', 70, 9, 3, 3, 46 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M25', 'RR4', 53, 10, 0, 1, 99 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M26', 'RR5', 21, 7, 2, 3, 53 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M27', 'RR6', 19, 4, 3, 0, 65 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M28', 'RR7', 31, 5, 1, 5, 97 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M29', 'RR8', 60, 5, 0, 3, 91 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M30', 'RR9', 78, 9, 2, 1, 54 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M31', 'RR10', 67, 6, 2, 1, 13 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M32', 'RR11', 67, 5, 3, 2, 59 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M33', 'RR12', 91, 10, 2, 4, 45 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M34', 'RR13', 58, 8, 1, 2, 37 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M35', 'KXIP1', 72, 8, 0, 0, 57 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M36', 'KXIP2', 21, 6, 2, 5, 38 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M37', 'KXIP3', 45, 10, 1, 0, 13 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M38', 'KXIP4', 75, 10, 0, 1, 81 
);

INSERT INTO POST_MATCH_BATSMAN_STATS(M_Id, P_Id, T_Runs, Run_rate, No_Sixes, No_Fours, Out_At_Run) 
VALUES 
( 
'M39', 'KXIP5', 58, 4, 1, 1, 78 
);

select * from POST_MATCH_BATSMAN_STATS;

CREATE TABLE POST_MATCH_BOWLER_STATS( 
M_Id VARCHAR(100), 
P_Id VARCHAR(100), 
No_Overs_played number, 
No_Catches number, 
Runouts number, 
No_Wickets_taken number, 
primary key(M_Id,P_Id), 
foreign key (M_Id) references MATCH_INFO(M_Id), 
foreign key (P_Id) references PLAYER(P_Id) 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M1', 'CSK1', 4, 0, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M2', 'CSK2', 3, 0, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M3', 'CSK3', 4, 1, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M4', 'CSK4', 2, 2, 1, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M5', 'CSK5', 3, 0, 2, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M6', 'CSK6', 3, 0, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M7', 'CSK7', 2, 3, 1, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M8', 'CSK8', 2, 3, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M9', 'CSK9', 3, 1, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M10', 'CSK10', 2, 2, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M11', 'CSK11', 3, 0, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M12', 'CSK12', 2, 3, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M13', 'CSK13', 4, 3, 1, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M14', 'CSK14', 2, 0, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M15', 'CSK15', 4, 3, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M16', 'CSK16', 4, 1, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M17', 'CSK17', 3, 2, 2, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M18', 'CSK18', 4, 2, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M19', 'CSK19', 3, 3, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M20', 'CSK20', 3, 3, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M21', 'RCB1', 2, 3, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M22', 'RCB2', 4, 0, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M23', 'RCB3', 4, 0, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M24', 'RCB4', 3, 2, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M25', 'RCB5', 4, 1, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M26', 'RCB6', 2, 2, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M27', 'RCB7', 3, 2, 2, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M28', 'RCB8', 2, 1, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M29', 'RCB9', 2, 0, 1, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M30', 'RCB10', 4, 1, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M31', 'RCB11', 4, 0, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M32', 'RCB12', 4, 2, 1, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M33', 'RCB13', 3, 3, 2, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M34', 'RCB14', 4, 1, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M35', 'DC1', 4, 0, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M36', 'DC2', 4, 0, 2, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M37', 'DC3', 4, 0, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M38', 'DC4', 4, 0, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M39', 'DC5', 4, 1, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M40', 'DC6', 2, 1, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M41', 'DC7', 4, 0, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M42', 'DC8', 2, 0, 0, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M43', 'DC9', 4, 1, 0, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M44', 'DC10', 2, 0, 1, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M45', 'DC11', 4, 2, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M46', 'DC12', 3, 0, 1, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M47', 'DC13', 2, 1, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M48', 'DC14', 3, 1, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M49', 'DC15', 2, 2, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M50', 'MI1', 3, 2, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M51', 'MI2', 2, 1, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M52', 'MI3', 2, 0, 1, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M53', 'MI4', 4, 3, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M54', 'MI5', 2, 2, 2, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M55', 'MI6', 4, 3, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M56', 'MI7', 4, 3, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M57', 'MI8', 4, 3, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M58', 'MI9', 4, 0, 1, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M59', 'MI10', 2, 1, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M60', 'MI11', 4, 1, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M1', 'MI12', 4, 0, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M2', 'MI13', 4, 1, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M3', 'MI14', 4, 3, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M4', 'MI15', 3, 2, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M5', 'MI16', 3, 3, 2, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M6', 'MI17', 4, 3, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M7', 'MI18', 3, 1, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M8', 'KKR1', 2, 0, 1, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M9', 'KKR2', 2, 0, 1, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M10', 'KKR3', 3, 1, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M11', 'KKR4', 2, 0, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M12', 'KKR5', 3, 1, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M13', 'KKR6', 4, 2, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M14', 'KKR7', 4, 1, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M15', 'KKR8', 4, 0, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M16', 'KKR9', 2, 3, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M17', 'KKR10', 4, 0, 2, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M18', 'KKR11', 4, 3, 0, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M19', 'KKR12', 4, 0, 2, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M20', 'KKR13', 4, 3, 0, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M21', 'KKR14', 4, 1, 0, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M22', 'RR1', 3, 2, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M23', 'RR2', 3, 0, 2, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M24', 'RR3', 4, 0, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M25', 'RR4', 4, 1, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M26', 'RR5', 4, 2, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M27', 'RR6', 4, 2, 2, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M28', 'RR7', 2, 1, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M29', 'RR8', 3, 2, 1, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M30', 'RR9', 3, 2, 1, 0 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M31', 'RR10', 3, 1, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M32', 'RR11', 3, 2, 0, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M33', 'RR12', 2, 1, 1, 3 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M34', 'RR13', 4, 3, 2, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M35', 'KXIP1', 3, 3, 2, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M36', 'KXIP2', 2, 0, 1, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M37', 'KXIP3', 4, 2, 0, 2 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M38', 'KXIP4', 2, 1, 2, 1 
);

INSERT INTO POST_MATCH_BOWLER_STATS(M_Id, P_Id, No_Overs_played, No_Catches, Runouts, No_Wickets_taken) 
VALUES 
( 
'M39', 'KXIP5', 4, 2, 2, 3 
);

select * from POST_MATCH_BOWLER_STATS;

CREATE TABLE MATCH_TEAM( 
M_Id VARCHAR(100), 
T_Id VARCHAR(100), 
primary key (M_Id, T_Id) 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M1', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M2', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M3', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M4', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M5', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M6', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M7', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M8', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M9', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M10', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M11', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M12', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M13', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M14', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M15', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M16', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M17', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M18', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M19', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M20', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M21', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M22', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M23', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M24', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M25', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M26', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M27', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M28', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M29', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M30', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M31', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M32', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M33', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M34', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M35', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M36', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M37', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M38', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M39', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M40', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M41', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M42', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M43', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M44', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M45', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M46', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M47', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M48', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M49', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M50', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M51', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M52', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M53', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M54', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M55', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M56', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M57', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M58', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M59', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M60', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M1', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M2', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M3', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M4', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M5', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M6', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M7', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M8', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M9', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M10', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M11', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M12', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M13', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M14', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M15', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M16', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M17', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M18', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M19', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M20', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M21', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M22', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M23', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M24', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M25', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M26', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M27', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M28', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M29', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M30', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M31', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M32', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M33', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M34', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M35', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M36', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M37', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M38', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M39', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M40', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M41', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M42', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M43', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M44', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M45', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M46', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M47', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M48', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M49', 'T8' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M50', 'T1' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M51', 'T2' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M52', 'T3' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M53', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M54', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M55', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M56', 'T7' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M57', 'T4' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M58', 'T5' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M59', 'T6' 
);

INSERT INTO MATCH_TEAM(M_Id, T_Id) 
VALUES 
( 
'M60', 'T7' 
);

SELECT * FROM MATCH_TEAM;

CREATE TABLE MATCH_UMPIRE( 
M_Id VARCHAR(100), 
U_Id VARCHAR(100), 
primary key(M_Id, U_Id) 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M1', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M2', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M3', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M4', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M5', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M6', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M7', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M8', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M9', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M10', 'U10' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M11', 'U11' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M12', 'U12' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M13', 'U13' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M14', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M15', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M16', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M17', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M18', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M19', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M20', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M21', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M22', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M23', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M24', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M25', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M26', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M27', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M28', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M29', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M30', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M31', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M32', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M33', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M34', 'U10' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M35', 'U11' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M36', 'U12' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M37', 'U13' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M38', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M39', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M40', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M41', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M42', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M43', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M44', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M45', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M46', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M47', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M48', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M49', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M50', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M51', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M52', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M53', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M54', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M55', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M56', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M57', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M58', 'U10' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M59', 'U11' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M60', 'U12' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M1', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M2', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M3', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M4', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M5', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M6', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M7', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M8', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M9', 'U10' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M10', 'U11' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M11', 'U12' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M12', 'U13' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M13', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M14', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M15', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M16', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M17', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M18', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M19', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M20', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M21', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M22', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M23', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M24', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M25', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M26', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M27', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M28', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M29', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M30', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M31', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M32', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M33', 'U10' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M34', 'U11' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M35', 'U12' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M36', 'U13' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M37', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M38', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M39', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M40', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M41', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M42', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M43', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M44', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M45', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M46', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M47', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M48', 'U1' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M49', 'U2' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M50', 'U3' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M51', 'U4' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M52', 'U5' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M53', 'U6' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M54', 'U7' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M55', 'U8' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M56', 'U9' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M57', 'U10' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M58', 'U11' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M59', 'U12' 
);

INSERT INTO MATCH_UMPIRE(M_Id, U_Id) 
VALUES 
( 
'M60', 'U1' 
);

select * from MATCH_UMPIRE;

select * from PLAYER ORDER BY P_Age;

select * from UMPIRE ORDER BY Experience desc;

select * from STATS_OF_BOWLER ORDER BY Catches desc where Over_played<10;

select * from STATS_OF_BOWLER  where Over_played<10 ORDER BY Catches desc;

select * from STATS_OF_BOWLER  where Overs_played<10 ORDER BY Catches desc;

select * from STATS_OF_BOWLER  where Overs_played<15 ORDER BY Catches desc;

select * from STATS_OF_BOWLER  where Overs_played>10 ORDER BY Catches desc;

select * from STATS_OF_BOWLER  where Catches<10 ORDER BY Overs_played desc;

select * from STATS_OF_BATSMAN  where Avg_Run_Rate=max(Avg_Run_Rate);

select * from STATS_OF_BATSMAN  where Avg_Run_Rate= select max(Avg_Run_Rate) from STATS_OF_BATSMAN;

select * from STATS_OF_BATSMAN  where Avg_Run_Rate = (select max(Avg_Run_Rate) from STATS_OF_BATSMAN);

select * from POST_MATCH_BATSMAN_STATS where M_Id =10 and T_Runs= (select min(T_Runs) from POST_MATCH_BATSMAN_STATS );

select * from POST_MATCH_BATSMAN_STATS where M_Id ='M10' and T_Runs= (select min(T_Runs) from POST_MATCH_BATSMAN_STATS );

select * from POST_MATCH_BATSMAN_STATS where M_Id ='M10' ;

select * from POST_MATCH_BATSMAN_STATS where T_Runs= (select min(Out_At_Run) from POST_MATCH_BATSMAN_STATS) ;

select * from POST_MATCH_BATSMAN_STATS where Out_at_Run= (select min(Out_At_Run) from POST_MATCH_BATSMAN_STATS) ;

select avg(T_Runs) from POST_MATCH_BATSMAN_STATS where MId='M20' ;

select avg(T_Runs) from POST_MATCH_BATSMAN_STATS where M_Id='M20' ;

select min(Runs_By_T1+Runs_By_T2) from MATCH_STATS where M_Id='M5' ;

select count(*) from MATCH_STATS GROUP BY TOSS_DECISION ;

select TOSS_DECISION, count(*) from MATCH_STATS GROUP BY TOSS_DECISION ;

select TOSS_DECISION, max(sixes) from MATCH_STATS GROUP BY TOSS_DECISION ;

select M_Id,TOSS_DECISION, max(sixes) from MATCH_STATS GROUP BY TOSS_DECISION ;

select TOSS_DECISION, max(sixes) from MATCH_STATS GROUP BY TOSS_DECISION ;

select TOSS_DECISION, min(fours) from MATCH_STATS GROUP BY TOSS_DECISION ;

select * from VENUE GROUP BY EATERY_ARRANGMENT HAVING count(eatery_arrangement>10) ;

select max(V_Capacity) from VENUE GROUP BY EATERY_ARRANGMENT HAVING count(eatery_arrangement)>10 ;

select max(V_Capacity) from VENUE GROUP BY Eatery_Arrangment HAVING count(Eatery_Arrangment)>10 ;

select max(V_Capacity) from VENUE GROUP BY Eatery_Arrangement HAVING count(Eatery_Arrangement)>10 ;

select *, max(V_Capacity) from VENUE GROUP BY Eatery_Arrangement HAVING count(Eatery_Arrangement)>10 ;

select * max(V_Capacity) from VENUE GROUP BY Eatery_Arrangement HAVING count(Eatery_Arrangement)>10 ;

select  STADIUM_NAME,max(V_Capacity) from VENUE GROUP BY Eatery_Arrangement HAVING count(Eatery_Arrangement)>10 ;

select Eatery_Arrangement, max(V_Capacity) from VENUE GROUP BY Eatery_Arrangement HAVING count(Eatery_Arrangement)>10 ;

select Eatery_Arrangement, min(V_Capacity) from VENUE GROUP BY Eatery_Arrangement HAVING count(Eatery_Arrangement)<10 ;

select TOSS_DECISION, min(fours) from MATCH_STATS GROUP BY TOSS_DECISION HAVING count(Toss_Decision)<10 ;

select TOSS_DECISION, min(fours) from MATCH_STATS GROUP BY TOSS_DECISION HAVING count(Toss_Decision)>10 ;

select TOSS_DECISION, min(fours) from MATCH_STATS GROUP BY TOSS_DECISION HAVING count(Toss_Decision)<15 ;

select TOSS_DECISION, min(fours) from MATCH_STATS GROUP BY TOSS_DECISION HAVING count(Toss_Decision)<20 ;

select TOSS_DECISION, min(fours) from MATCH_STATS GROUP BY TOSS_DECISION HAVING count(Toss_Decision)<30 ;

select * from PLAYER where P_name like 'r%' or 'R%';

select * from PLAYER where P_name like 'R%';

select * from VENUE where STADIUM_NAME like 'E___';

select * from VENUE where STADIUM_NAME like 'E_%';

select * from UMPIRE where U_Name like '%Y' or U_Name like '%N';

select * from UMPIRE where U_Name like '%Y' or U_Name like '%N' or U_Name like '%n' or U_Name like '%y';

select to_char(M_Date, 'MM/YY') from MATCH_INFO;

select M_Id, to_char(M_Date, 'MM/YY') from MATCH_INFO;

select P_Id, P_NAME, length(P_name) from PLAYER;

select T_Id, T_NAME,No_of_players, sqrt(No_of_players) from TEAM;

select U_Id, U_NAME, add_months(DOB, 12) from UMPIRE;

select U_Id, U_NAME, DOB, add_months(DOB, 12) from UMPIRE;

select * FROM STATS_OF_BATSMAN WHERE Innings_played=(select max(Innnings_played)  from STATS_OF_BATSMAN );

select * FROM STATS_OF_BATSMAN WHERE Innings_played=(select max(Innings_played)  from STATS_OF_BATSMAN );

select * FROM MATCH_STATS WHERE WON_BY=(select max(WON_BY)  from MATCH_STATS);

select * FROM VENUE WHERE V_CAPACITY=(select max(V_CAPACITY)  from VENUE);

select * FROM BALL_BY_BALL WHERE Runs=(select max(Runs)  from ball_by_ball);

select * FROM player,team where pplayer.t_id=team.t_id;

select * FROM player,team where player.t_id=team.t_id;

select * FROM match_info, match_stats where match_info.t_id=match_stats.t_id;

select * FROM match_info, match_stats where match_info.m_id=match_stats.m_id;

select * FROM match_info, post_match_batsman_stats where match_info.m_id=post_match_batsman_stats.m_id;

select * FROM team,coach,player where team.coach_id=coach.couch_id and team.t_id=player.t_id;

select * FROM team,coach,player where team.coach_id=coach.coach_id and team.t_id=player.t_id;

select * FROM match_info, umpire, match_umpire where match_umpire.m_id=match_info.M_id and umpire.u_id=match_umpire.u_id;

select * FROM match_info, season,venue where match_info.season_id=season.season_id and venue.v_id=match_info.v_id;

select * FROM match_info join match_team on match_info.m_id=match_team.m_id;

select * FROM match_team join match_info  on match_info.m_id=match_team.m_id;

select * FROM match_team natural join match_info  on match_info.m_id=match_team.m_id;

select * FROM match_team natural join match_info ;

select * FROM match_team join match_info  on match_team.M_Id=match_info.M_Id;

select * FROM ball_by_ball join match_stats on ball_by_ball.m_id= match_stats.m_id where catch_out='Yes' or catch_out='yes';

select * FROM ball_by_ball join match_stats on ball_by_ball.m_id= match_stats.m_id where catch_out='Yes' or where catch_out='yes';

select * FROM ball_by_ball join match_stats on ball_by_ball.m_id= match_stats.m_id where catch_out='Yes' ;

select * FROM ball_by_ball join match_stats on ball_by_ball.m_id= match_stats.m_id where catch='Yes' ;

select * FROM ball_by_ball join match_stats on ball_by_ball.m_id= match_stats.m_id where catch='Yes' or catch='yes' ;

select * FROM umpire left join match_umpire on match_umpire.u_id=umpire.u_id;

select * FROM venue right join match_venue on match_venue.v_id=venue.v_id;

select * FROM venue right join match_info on match_info.v_id=venue.v_id;

