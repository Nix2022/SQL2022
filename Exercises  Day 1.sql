--1.  Write a query in SQL to list the emp_name and salary is increased by 15% and expressed as no.of Dollars.  
select FIRST_NAME ||'  ' ||LAST_NAME as "Name" , salary, salary*1.15 "no.of Dollars"
from ssdx_tmp.employees;

--2.	Write a query in SQL to produce the output of employees full name as a format of “Firstname” “ “ “Lastname”
Select FIRST_NAME ||'  ' ||LAST_NAME as "Employee Details" 
from ssdx_tmp.employees;
--3.	Write a query in SQL to list the employees with Hire date in the format like February 22, 1991 
SELECT First_Name , Last_Name ,  to_char(Hiredate,'MONTH DD,YYYY') HireDate
from ssdx_tmp.employees;
--4.	Write a query in SQL that sorts the employees by their hiring date from the oldest to the newest
SELECT First_Name , Last_Name ,  Hiredate
from ssdx_tmp.employees
order by Hiredate;
--5.	Write a query in SQL to count the no. of characters without considering the spaces for each name. 
select FIRST_NAME ||'  ' ||LAST_NAME  as "EmployeeDetails" 
from ssdx_tmp.employees;
--6.	Write a query in SQL to list the employees who does not belong to department 20. 
select *
from  ssdx_tmp.employees e
where e.department_id!=20


--7.	Write a query in SQL to list the employees who joined before 2011
SELECT First_Name,Last_Name, hiredate
FROM ssdx_tmp.employees
where hiredate < '01/Jan/2011';

--8.	Write a query in SQL to display the average salaries of all the employees who works at department 1
select avg(Salary)
from ssdx_tmp.employees
where department_id=1;
--9.	Write a query in SQL to list the employees whose salary is more than 25000 after giving 25% increm(3ent.
select salary ,'salsary + 25%'
from ssdx_tmp.employees
where salary>25000;

--10.	Write a query in SQL to list the name of the employees, those having six characters to their name.
select First_Name
from ssdx_tmp.employees
where length(First_Name)>6;

--11.	Write a query in SQL to list the employees who joined in the month January
select  First_Name, Last_Name , hiredate
from ssdx_tmp.employees
where to_char(hiredate,'MON') = 'JAN';



--12.	Create the following tables 
Create table ssdx_tmp.Salesman
(Salesman_id  number,
 Name varchar2(50),
 city  varchar2(50),
 Comission number);
 
 select *
 from ssdx_tmp.salesman;
 
 
insert into ssdx_tmp.salesman(salesman_id,name,city,comission)
values (5001,'james hoog','New York',0.15);
insert into ssdx_tmp.salesman(salesman_id,name,city,comission)
values (5005,'Pit Alex','London',0.11);
insert into ssdx_tmp.salesman(salesman_id,name,city,comission)
values (5006,'Mc Lyon','Paris',0.14);
insert into ssdx_tmp.salesman(salesman_id,name,city,comission)
values (5007,'Paul Adam','Rome',0.13);
insert into ssdx_tmp.salesman(salesman_id,name,city,comission)
values (5003,'Lauson Hen','San Jose',0.12);
 commit ;

select *
from ssdx_tmp.salesman

Create table ssdx_tmp.Customer
(Customer_id  number,
 Cust_Name varchar2(50),
 city  varchar2(50),
 grade number,
 salesman_id number)
 
 
select *
from ssdx_tmp.customer

insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3002,'Nick Rimando','New York',100,5001);

insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3007,'Brad Davis','New York',200,5002);

insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3005,'Graham Zusi','California',200,5002);

insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3008,'Julia Green','London',300,5002);


insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3004,'Fabian Johnson','Paris',300,5006);

insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3009,'Geoff Camerron','Berlin',100,5003);
insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3003,'Jozy Altidor','Moscow',200,5007);
insert into ssdx_tmp.customer(customer_id,cust_name,city,grade,salesman_id)
values (3001,'Brad Guzan','London','',5005);
select *
from ssdx_tmp.customer;


 commit ;
Create table ssdx_tmp.Ordersc
(ord_id  number,
 purch_amt number,
 ord_date date,
 customer_id number,
 salesman_id number)


select *
from ssdx_tmp.Ordersc

insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70001,150.5,TO_DATE('2012/10/05','yyyy/dd/mm '),3005,5002);
select *
from ssdx_tmp.Ordersc

insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70009,270.65,TO_DATE('2012-10-09','yyyy-dd-mm '),3001,5005);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70002,65.26,TO_DATE('2012-10-05','yyyy-dd-mm '),3002,5001);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70004,150.5,TO_DATE('2012-17-08','yyyy-dd-mm '),3009,5003);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70007,948.5,TO_DATE('2012-10-09','yyyy-dd-mm '),3005,5002);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70005,2400.6,TO_DATE('2012-27-07','yyyy-dd-mm '),3007,5001);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70008,5760,TO_DATE('2012-10-09','yyyy-dd-mm '),3002,5001);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70010,1983.43,TO_DATE('2012-10-10','yyyy-dd-mm '),3004,5006);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70003,2480.4,TO_DATE('2012-10-10','yyyy-dd-mm '),3009,5003);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70012,250.45,TO_DATE('2012-27-06','yyyy-dd-mm '),3008,5002);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70011,75.29,TO_DATE('2012-17-08','yyyy-dd-mm '),3003,5007);
insert into ssdx_tmp.Ordersc(ord_id,purch_amt,ord_date,customer_id,salesman_id)
values (70013,3045.6,TO_DATE('2012-25-04','yyyy-dd-mm '),3002,5001);

 commit ;

delete from ssdx_tmp.Ordersc
where ORD_ID=70001;

select ORD_ID
from ssdx_tmp.Ordersc
order by ORD_ID;
--1.	Write a SQL statement to prepare a list with salesman name, customer name and their cities for the salesmen and customer who belongs to the same city.
select Name, s.City , c.city, Customer_id , Cust_Name
from ssdx_tmp.salesman s, ssdx_tmp.customer c
where s.salesman_id=c.salesman_id 
and
 s.city=c.city;
 --2.	 Write a SQL statement to know which salesman are working for which customer
 select cust_name , Name , c.salesman_id ,  s.salesman_id
 from ssdx_tmp.salesman s, ssdx_tmp.customer c
 where s.salesman_id= c.salesman_id;
--3.	Write a SQL statement to find the list of customers who appointed a salesman for their jobs who gets a commission from the company is more than 12%.
 select cust_name , Name , c.salesman_id ,  s.salesman_id, comission
 from ssdx_tmp.salesman s, ssdx_tmp.customer c
 where s.salesman_id= c.salesman_id
 and comission>0.12;
--4.	Write a SQL statement to find the list of customers who appointed a salesman for their jobs who does not live in the same city 
--where their customer lives, and gets a commission is above 12%. 
 select Cust_Name , s.City , c.city, comission
from ssdx_tmp.salesman s, ssdx_tmp.customer c
where s.salesman_id=c.salesman_id 
and
 s.city!=c.city
 and
 comission>0.12;
--5.	Write a SQL statement to find the details of an order i.e. order number, order date, amount of order, which customer gives the 
--order and which salesman works for that customer and how much commission he gets for an order.
select ORd_id , Purch_amt, Ord_date, c.cust_name,s.Name,s.salesman_id,c.customer_id , comission 
from ssdx_tmp.salesman s, ssdx_tmp.customer c, ssdx_tmp.ordersc o
where c.customer_id=o.customer_id
and s.salesman_id=o.salesman_id

--6.	Write a list of all the salesman along with their customers (ps list all salesman even the ones not having any customers)
select s.name, cust_name ,s.salesman_id, c.salesman_id
from ssdx_tmp.salesman s, ssdx_tmp.customer c
where s.salesman_id = c.salesman_id
and s.salesman_id  not in (select s.salesman_id
                           from ssdx_tmp.salesman s, ssdx_tmp.customer c
                                where s.salesman_id = c.salesman_id);

--7.	Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending 
--order according to the order date to find that either any of the existing customers have placed no order or placed one or more orders
select  o.customer_id , c.cust_name, c.city, o.ord_date, o.ord_id
from  ssdx_tmp.customer c, ssdx_tmp.ordersc o
where c.customer_id=o.customer_id
order by o.ord_date;


select name
from ssdx_tmp.salesman
