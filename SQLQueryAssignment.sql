
/* Q1 Create Database.*/
create database SampleJoinsDB287
 use SampleJoinsDB267  

/* Q2 Create Customer table with columns Customer Id, Customer Name,
Phone, Address.*/
create table Customer(
Id  int identity(1,1) primary key,
Name varchar(200),
City varchar(200),
Address varchar(200),
MobileNumber bigint)

/* Q3 Add few customer details into customer table.*/
insert into Customer values('Shivani','Wardha','Wardha',967756576787),
('Rutuja','Pune','pune',890765445)

/* Q4 Add new columns like Country, Salary and Pincode and update values.*/
alter table Customer add Country varchar(200),
pincode int

select * from Customer

/* Q5 Update customer details based on customer name.*/
update Customer set Address='mumbai' where name='Rutuja'

alter table Customer add ContactName varchar(200) not null default 'Worker'

select count(*) from Customer 

alter table Customer add salary float


update Customer set salary=4000 where id in (1,2)
update Customer set salary=3000 where name='Shivani'

insert into Customer values('neha','hyderabad','hyderabad',906655567,'India',876589,'Teacher',7999),
('sima','chennai','hyderabad',967845567,'India',867329,'Shopkeeper',9000)

update Customer set Country='America' where name='Shivani'
update Customer set Country='Egypt' where name='Rutuja'

/* Q6 Show number of customers in each country.*/
select count(*)  as NoOfCustomers,country from Customer group by country

/* Q7 Show maximum salary, minimum salary and average salary for the customers.*/
select max(salary) as maximumSalary from Customer 
select min(salary) as minimumSalary from Customer 
select avg(salary) as averageSalary from Customer 

/* Q8 Create order table with columns order id, product name, quantity and rating.*/
create table Orders(
 OrderId int identity(1,1) primary key,
 OrderDate date,
  product varchar (50),
 Rate float,
 Quantity int,
CustomerId int Foreign key References Customer(Id)
 );

 /* Q9 Fetch data from both tables.*/
 select * from Customer
 select *  from Orders

 
