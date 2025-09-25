-- Lab1 tutorial exercise, 16 May 2024
Create Database Lab1; --Hightlight then execute

Use Lab1; --Important step
--This is to tell which database server to use
-- because there might be many databases in the server
-- since we want to create table inside Lab1
--therefore must use Lab1

Create Table Student
(                                  --(   this is the open bracket at front, so if use must close
StudentId nvarchar(50),
[Name] nvarchar(50),               --[]  is for keyword
Gender nvarchar(50),
DOB Date,
[Address] nvarchar(50)
);                                  --)  close bracket

drop table student;                 -- delete entire table

insert into Student values
('S01', 'Ali', 'Male', '2 February 1996', 'Kuala Lumpur');
-- in this case the first value will be inserted into first collumn
-- second value will be inserted into second collumn of the table
-- and so on
-- single quote is used for inserting character

insert into Student values
('S02', 'Nancy', 'Female', '16 May 1997', 'Bukit Jalil');
-- to see the changes made, u must refresh database,
-- close the table, reopen the table

-- to insert a null value simply put null without single quote
insert into Student values
('S03', 'Melvin', 'Male', '20 November 1998', Null);

-- to insert a null value simply put null with a single quote
-- it gives an error because null can't have single quote 'Null'
insert into Student values
('S03', 'Melvin', 'Male', '20 November 1998', 'Null');

-- try putting a wrong data
-- it gives an error because date doesn't exist
insert into Student values
('S03', 'Melvin', 'Male', '40 November 1998', Null);

insert into Student values
('S04', 'Angelina', 'Female', '30 December 1995', 'Sri Petaling');

-- the table has 5 collumns, try giving 4 values
-- it gives an error
insert into Student values
('S04', 'Angelina', 'Female', '30 December 1995');

-- try to swap between DOB and Address
-- conversion fail when converting date and time
insert into Student values
('S04', 'Angelina', 'Female', 'Sri Petaling', '30 December 1995');

--u can also insert byv specifying the collumn name
insert into Student (StudentId, [Name], Gender, DOB, [Address])
values ('S01', 'Ali', 'Male', '2 February 1996', 'Kuala Lumpur');

-- can shuffle the order of the collumn when insewrting valiues
-- but make sure its value follows accordingly
insert into Student (Gender, StudentId, DOB, Address, Name)
values ('Female', 'S02', '16 May 1997', 'Bukit Jalil', 'Nancy');

-- query below will insert null into address collumn, because address 
-- is not specified and no value was given for address collumn
insert into Student (StudentID, Name, Gender, DOB)
values ('S03', 'Melvin', 'Male', '20 Novemeber 1998');