create database ORG;
show databases;
use org;

CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_iNCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)VALUES
(001, "Monika", "Arora", 100000, "14-02-20 09.00.00", "HR"),
(002, "Niharika", "Verma", 80000, "14-06-11 09.00.00", "Admin"),
(003, "Vishal", "Singhal", 300000, "14-02-20 09.00.00", "HR"),
(004, "Amitabh", "Singh", 500000, "14-02-20 09.00.00", "admin"),
(005, "Vivek", "Bhati", 500000, "14-06-11 09.00.00", "admin"),
(006, "Vipul", "Diwan", 200000, "14-06-11 09.00.00", "Account"),
(007, "Satish", "Kumar", 75000, "14-01-20 09.00.00", "Account"),
(008, "Geetika", "Chauhan", 90000, "14-04-11 09.00.00", "Admin");

insert into worker values (009, "Rohit", "Singh", "0", "14-09-20 09.00.00", "HR");

select * from Worker;

use org;
CREATE TABLE Bonus(
WORKER_REF_ID INT(10),
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
);

INSERT INTO Bonus
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, "16-02-20"),
(002, 3000, "16-06-11"),
(003, 4000, "16-02-20"),
(001, 4500, "16-02-20"),
(002, 3500, "16-06-11");

SELECT * FROM Bonus;

CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
);

INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)VALUES
(001, "Manager", "2016-02-20 00:00:00"),
(002, "Executive", "2016-06-11 00:00:00"),
(008, "Executive", "2016-06-11 00:00:00"),
(005, "Manager", "2016-06-11 00:00:00"),
(004, "Asst. Manager", "2016-06-11 00:00:00"),
(007, "Executive", "2016-06-11 00:00:00"),
(006, "Lead", "2016-06-11 00:00:00"),
(003, "Lead", "2016-06-11 00:00:00");

select * from Title;
-- Dual table

select 45+42;
select now();
select ucase("mysql");

-- DQL/DRL - Reterive data from table
-- where - Reduce rows based on given conditions
select * from Worker WHERE DEPARTMENT = "HR";

-- BETWEEN
select * from Worker WHERE Salary BETWEEN 80000 AND 300000;

-- Or 
 select * from Worker WHERE department = "account" OR department = "HR";
 
 -- IN -  reduce or conditions
 select * from Worker WHERE department IN ("HR", "admin");
 
 -- Not
 select * from Worker WHERE department NOT IN("HR", "ACCOUNT");
 
 -- IS NULL
 select * from Worker WHERE SALARY IS NULL;
 
 -- Wildcard/Pattern Searching - It is used to search for specified pattern in column
 select * from Worker WHERE FIRST_NAME LIKE "_i%";
 select * from Worker WHERE FIRST_NAME LIKE "%a%";
 
 -- Sorting
 select * from Worker order by Salary;
 select * from Worker order by Salary desc;
 
 -- Distinct - Find distinct data in the table
 select distinct department from Worker;
 
 -- GroupBy - It is used to collect data from multiple records and group the 
 -- result by one or more column. Used some aggression function to perform 
 -- various action.
 select department, count(department) from Worker group by department;
 select department, sum(salary) from Worker group by department;
 select department, avg(salary) from Worker group by department;
 select department, max(salary) from Worker group by department;
 select department, min(salary) from Worker group by department;
 
 -- Group By Having - out of the categories made by group by , we would like to
 -- know particular thing/data(condi) or adding filtering in group by
-- It is similar to where
select department, count(department) from Worker group by department having count(department) > 2;




 
 
 
 




