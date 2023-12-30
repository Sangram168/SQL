CREATE DATABASE TEMP;
show databases;
use temp;

CREATE TABLE Customer (
id integer PRIMARY KEY,
cname varchar(225),
Address varchar(225),
Gender char(2),
City varchar(225),
Pincode integer
);

INSERT INTO Customer
VALUES (1251, "Ram Kumar", "Dilbagh Nagar", "M", "Jalandhar", 144002),
	   (1300, "Shyam Singh", "Ludhiana H.O", "M", "Ludhiana", 141001),
       (245, "Neelabh Shukla", "Ashok Nagar", "M", "Jalandhar", 144003),
       (210, "Barkha Singh", "Dilbagh Nagar", "F", "Jalandhar", 144002),
       (500, "Rohan Arora", "Ludhiana H.O", "M", "Ludhiana", 141001);
       
       insert into Customer
       VALUES (1252, "Ram Kumar3", "Dilbagh Nagar", 'M', "Jalandhar", NULL);
       select * from Customer;
       truncate table customer;
       drop table Customer;
       
       CREATE TABLE Order_details (
       Order_id integer,
       deleivery_date DATE,
       cust_id INT,
       FOREIGN KEY(cust_id) references Customer(id)
       );
       
       INSERT INTO Order_details
       VALUES (1, "2019-03-11", 245);
       select * from Order_details;
       drop table Order_details;
       
       CREATE TABLE account(
       id int primary key,
       name varchar(255) UNIQUE,
       balance INT,
       CONSTRAINT acc_balanace_chk CHECK(balance > 1000)
       );
       
       INSERT INTO account(id, name, balance)
       VALUES(1, "A", 10000);
       select * from account;
       
       INSERT INTO account(id, name, balance)
       values(2, "B", 100); -- do not enter because of constraint
       drop table account;
       
       -- default - set default value of column
       CREATE TABLE account(
       id int primary key,
       name varchar(255) UNIQUE,
       balance INT NOT NULL default 0
       );
       
       INSERT INTO account(id, name, balance)
       VALUES(1, "A", 10000);
       select * from account;
       
       INSERT INTO account(id, name)
       values(2, "B"); 
       drop table account;
       
       -- Alter Operation
       -- adding new column
       
       CREATE TABLE account(
       id int primary key,
       name varchar(255) UNIQUE,
       balance INT NOT NULL default 0
       );
       INSERT INTO account(id, name, balance)
       VALUES(1, "A", 10000);
       select * from account;
       
       ALTER TABLE account ADD interest float not null default 0;
       select * from account;
       
       -- MODIFY - change data type of column
       alter table account MODIFY interest DOUBLE NOT NULL DEFAULT 0;
       DESC ACCOUNT;
       
       -- change column - rename the column
       ALTER TABLE account change interest saving_interest float not null default 0;
       
       -- drop column
       alter table account drop column saving_interest;
       
       -- rename - rename the table
       alter table account rename to account_details;
       select * from account_details;
       
      