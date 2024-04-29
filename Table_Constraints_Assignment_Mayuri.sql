-- Create database
create database assignment1;
-- Use the database
use assignment1;
-- Create table Customers consisting of CustomerID, FirstName, LastName, Email 
-- set table constarints as Primary key, Not null, unique as required
create table customer1(CutomerID int primary key,
FirstName varchar(30) not null, 
LastName varchar(30) not null, 
Email varchar(30) not Null unique
);

-- Describe Customers table

describe customer1;

-- Insert values into Customers table
insert into customer1 values (1,"Mayuri", "Ahire","mayuriahire@gmail.com");

-- View Customers table
select*from customer1;
-- Try to add a duplicate email in Customers
insert into customer1 values(2,"Rutuja", "Ahire","rutujaahire@gmail.com");
insert into customer1 values(3,"Raj", "Saindane","rajsaindane@gmail.com");

-- View Customers table
select*from customer1;

-- Create table Orders with columns OrderID,CustomerID,OrderDate,TotalAmount  
--  -- set table constarints as Primary key, Not null, unique as required
create table Orders1(orderId int primary key,
cutomerID int not null,
OrderDate date default "2024-01-06",
foreign key(cutomerID) 
references customer1(cutomerID),
TotalAmount decimal(10,2) 
check (TotalAmount>0)
);


-- Describe Orders table
describe Orders1;

-- View Orders table
select *from Orders1;
-- Insert values into Orders table
insert into Orders1 values (1,1,Orderdate,25000);
insert into Orders1 values (2,2,Orderdate,3000);
-- View Orders table
select *from Orders1;
-- Try to add an order with a non-existent customer
insert into Orders1 values (3,3,Orderdate,4000);

-- View Orders table
select *from Orders1;

-- Correct entry for order 104
insert into Orders1 values(104,2,Orderdate,50000);

-- View Orders table
select *from Orders1;

