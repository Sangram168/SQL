create database temp;

USE TEMP;
CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR(255)
);

INSERT INTO student VALUES(1, 'Ankit');
select * from student;
drop database if exists temp;
select * from student;
