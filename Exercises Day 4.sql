--Create 2 tables named table1 and table2 as follows:--
CREATE TABLE SSDX_TMP.TABLE1NS(ID NUMBER(10), NAME VARCHAR2(30));
CREATE TABLE SSDX_TMP.TABLE2NS(ID NUMBER(10), NAME VARCHAR2(30));

SELECT *
FROM SSDX_TMP.TABLE1NS;

SELECT *
FROM SSDX_TMP.TABLE2NS;


INSERT INTO SSDX_TMP.TABLE1NS
VALUES(1,'FADI');
INSERT INTO SSDX_TMP.TABLE1NS
VALUES(2,'ELIE');
INSERT INTO SSDX_TMP.TABLE1NS
VALUES(3,'GEORGES');
INSERT INTO SSDX_TMP.TABLE1NS
VALUES(4,'TONI');
INSERT INTO SSDX_TMP.TABLE1NS
VALUES(5,'PHILLIPE');
INSERT INTO SSDX_TMP.TABLE1NS
VALUES(6,'ZIAD');
INSERT INTO SSDX_TMP.TABLE1NS
VALUES(7,'ANTONY');


INSERT INTO SSDX_TMP.TABLE2NS
VALUES(1,'WALID');
INSERT INTO SSDX_TMP.TABLE2NS
VALUES(2,'TOUFIC');
INSERT INTO SSDX_TMP.TABLE2NS
VALUES(3,'RONI');
INSERT INTO SSDX_TMP.TABLE2NS
VALUES(4,'EMMANUEL');
INSERT INTO SSDX_TMP.TABLE2NS
VALUES(5,'TINA');
INSERT INTO SSDX_TMP.TABLE2NS
VALUES(6,'ROBERT');
INSERT INTO SSDX_TMP.TABLE2NS
VALUES(7,'ELIANE');

 commit ;
UPDATE SSDX_TMP.TABLE2NS T2
SET NAME= (SELECT T1.NAME
             FROM SSDX_TMP.TABLE1NS T1
             WHERE T2.ID=T1.ID)
             
             
 commit ;             
--WHERE T2.ID<10

--SELECT REPLACE(T2.NAME,T2) "Changes"
  --   FROM SSDX_TMP.TABLE1NS T1 , SSDX_TMP.TABLE2NS T2
  
Delete from SSDX_TMP.TABLE1NS T1
Where  T1.NAME= 'FADI';


--1.	What is SQL and where does it come from--

/*The SQL programming language was developed in the 1970s by IBM researchers Raymond Boyce and Donald Chamberlin. 
The programming language, known then as SEQUEL, was created following Edgar Frank Codd's paper, 
"A Relational Model of Data for Large Shared Data Banks," in 1970.*/


--2.	What are the difference between DDL, DML and DCL commands? --

/*DDL – Data Definition Language
DQl – Data Query Language
DML – Data Manipulation Language
DCL – Data Control Language
Though many resources claim there to be another category of SQL clauses TCL – Transaction Control Language. So we will see in detail about TCL as well. 


DDL (Data Definition Language): 
DDL or Data Definition Language actually consists of the SQL commands that can be used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database.DDL is a set of SQL commands used to create, modify, and delete database structures but not data. These commands are normally not used by a general user, who should be accessing the database via an application.

List of DDL commands: 

CREATE: This command is used to create the database or its objects (like table, index, function, views, store procedure, and triggers).
DROP: This command is used to delete objects from the database.
ALTER: This is used to alter the structure of the database.
TRUNCATE: This is used to remove all records from a table, including all spaces allocated for the records are removed.
COMMENT: This is used to add comments to the data dictionary.
RENAME: This is used to rename an object existing in the database.
DQL (Data Query Language):
DQL statements are used for performing queries on the data within schema objects. The purpose of the DQL Command is to get some schema relation based on the query passed to it. We can define DQL as follows it is a component of SQL statement that allows getting data from the database and imposing order upon it. It includes the SELECT statement. This command allows getting the data out of the database to perform operations with it. When a SELECT is fired against a table or tables the result is compiled into a further temporary table, which is displayed or perhaps received by the program i.e. a front-end.

List of DQL: 

SELECT: It is used to retrieve data from the database.
DML(Data Manipulation Language): 
The SQL commands that deals with the manipulation of data present in the database belong to DML or Data Manipulation Language and this includes most of the SQL statements. It is the component of the SQL statement that controls access to data and to the database. Basically, DCL statements are grouped with DML statements.

List of DML commands: 

INSERT : It is used to insert data into a table.
UPDATE: It is used to update existing data within a table.
DELETE : It is used to delete records from a database table.
LOCK: Table control concurrency.
CALL: Call a PL/SQL or JAVA subprogram.
EXPLAIN PLAN: It describes the access path to data.
DCL (Data Control Language): 
DCL includes commands such as GRANT and REVOKE which mainly deal with the rights, permissions, and other controls of the database system. 

List of  DCL commands: 

GRANT: This command gives users access privileges to the database.
REVOKE: This command withdraws the user’s access privileges given by using the GRANT command.
Though many resources claim there to be another category of SQL clauses TCL – Transaction Control Language. So we will see in detail about TCL as well. TCL commands deal with the transaction within the database. 

List of TCL commands: 
 

COMMIT: Commits a Transaction.
ROLLBACK: Rollbacks a transaction in case of any error occurs.
SAVEPOINT:Sets a savepoint within a transaction.
SET TRANSACTION: Specify characteristics for the transaction.
*/



/* SELECT DISTINCT *
INTO duplicate_table
FROM original_table
GROUP BY key_value
HAVING COUNT(key_value) > 1

DELETE original_table
WHERE key_value
IN (SELECT key_value
FROM duplicate_table)

INSERT original_table
SELECT *
FROM duplicate_table

DROP TABLE duplicate_table
*/

--4.	How does one add a day/hour/minute/second to a date value?
/*
Add_months ('XX-XX-XX',1)     ADD 1 MONTH
Add_months ('XX-XX-XX',12)     ADD 1 YEAR
Add_months ('XX-XX-XX',1/30)     ADD 1 DAY
Add_months*/


--5.	How does one count different data values in a column
/*To count the number of different values that are stored in a given column, 
you simply need to designate the column you pass in to the COUNT function as DISTINCT.
 When given a column, COUNT returns the number of values in that column. 
   Combining this with DISTINCT returns only the number of unique (and non-NULL) values.*/
   
--6.	Can one drop a column from a table?  

/*   YES OFFCOURSE USING BELOW METHOD
Delete from SSDX_TMP.TABLE1NS T1
Where  T1.NAME= 'FADI';
*/

--7.	Can one rename a column in a table? 
/*        YES OFFCOURSE 
IN SELECT LINE*/



--EXERCISE 3

CREATE TABLE SSDX_TMP.PATHESNS(PATH VARCHAR(250))
INSERT INTO SSDX_TMP.PATHESNS
VALUES ('MyDocuments\MyFiles\MainFile\SqlTest.txt');
INSERT INTO SSDX_TMP.PATHESNS
VALUES ('C:\NewFolder\ManyFiles\BinaryFile.doc');
INSERT INTO SSDX_TMP.PATHESNS
VALUES ('Desktop\Attachements\emails\MyMails.eml');
INSERT INTO SSDX_TMP.PATHESNS
VALUES ('Bfile\Oracle\Admin\Network\Tnsnames.ora');
SELECT *
FROM SSDX_TMP.PATHESNS



SELECT SUBSTR(P.PATH, INSTR(P.PATH,'\',-1)+1), P.PATH
FROM SSDX_TMP.PATHESNS P

--EXERCISE 4
CREATE TABLE SSDX_TMP.ALL_SALESNS 
(
YEAR                 INTEGER NOT NULL,
MONTH             INTEGER NOT NULL,
PRD_TYPE_ID INTEGER,
EMP_ID             INTEGER,
AMOUNT          NUMBER (8, 2)
);
ALTER TABLE SSDX_TMP.ALL_SALESNS add CONSTRAINT ALL_SALES_PK 
                          PRIMARY KEY (YEAR, MONTH, PRD_TYPE_ID, EMP_ID);


SELECT *
FROM SSDX_TMP.ALL_SALESNS 

INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(2003,1,21,10034.84);
INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(      2003   ,       2       ,      1         ,    21   ,   15144.65);
INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(      2003    ,      3       ,      1         ,    21,      20137.83);
INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(      2003     ,     4        ,     1          ,   21 ,     25057.45);
INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(      2003      ,    5         ,    1           ,  21  ,    17214.56);
INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(      2003       ,   6          ,   1    ,         21   ,   15564.64);
INSERT INTO SSDX_TMP.ALL_SALESNS
 VALUES(     2003        ,  7           ,  1     ,        21    ,  12654.84);
 INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(      2003       ,   8            , 1      ,       21     , 17434.82);
INSERT INTO SSDX_TMP.ALL_SALESNS
VALUES(      2003      ,    9             ,1       ,      21,      19854.57);
INSERT INTO SSDX_TMP.ALL_SALESNS
 VALUES(     2003     ,    10             ,1        ,     21 ,     21754.19);
 INSERT INTO SSDX_TMP.ALL_SALESNS
 VALUES(     2003      ,   11             ,1         ,    21  ,    13029.73);
 INSERT INTO SSDX_TMP.ALL_SALESNS
 VALUES(     2003       ,  12             ,1          ,   21   ,   10034.84);
 INSERT INTO SSDX_TMP.ALL_SALESNS
 VALUES(     2004        ,  1             ,1           ,  22    ,  11034.84);

COMMIT;
/*1) For the first three months of 2003, write the following query reports:
  * The total sum of all sales for all three months (labeled as total_month_amount)*/

SELECT SUM(S.AMOUNT) total_month_amount
FROM SSDX_TMP.ALL_SALESNS S
WHERE S.YEAR=2003 AND S.MONTH<4

/*1) For the first three months of 2003, write the following query reports:
 * The total sum of all sales for all product types (labeled as total_product_type_amount)*/

SELECT SUM(S.AMOUNT) total_product_type_amount
FROM SSDX_TMP.ALL_SALESNS S
WHERE S.YEAR=2003 AND S.MONTH<4
ORDER BY S.PRD_TYPE_ID;

SELECT SUM(S.AMOUNT) total_month_amount
FROM SSDX_TMP.ALL_SALESNS S;

---------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE SSDX_TMP.ALL_SALESNS2 
(
YEAR                 INTEGER NOT NULL,
MONTH             INTEGER NOT NULL,
PRD_TYPE_ID INTEGER,
EMP_ID             INTEGER,
AMOUNT          NUMBER (8, 2)
);

INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(2003,1,4,21,10034.84);
INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(      2003   ,       2       ,      1         ,    21   ,   15144.65);
INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(      2003    ,      3       ,      2         ,    21,      20137.83);
INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(      2003     ,     4        ,     3          ,   21 ,     25057.45);
INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(      2003      ,    5         ,    4           ,  21  ,    17214.56);
INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(      2003       ,   6          ,   1    ,         21   ,   15564.64);
INSERT INTO SSDX_TMP.ALL_SALESNS2
 VALUES(     2003        ,  7           ,  2     ,        21    ,  12654.84);
 INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(      2003       ,   8            , 3      ,       21     , 17434.82);
INSERT INTO SSDX_TMP.ALL_SALESNS2
VALUES(      2003      ,    9             ,1       ,      21,      19854.57);
INSERT INTO SSDX_TMP.ALL_SALESNS2
 VALUES(     2003     ,    10             ,2        ,     21 ,     21754.19);
 INSERT INTO SSDX_TMP.ALL_SALESNS2
 VALUES(     2003      ,   11             ,3         ,    21  ,    13029.73);
 INSERT INTO SSDX_TMP.ALL_SALESNS2
 VALUES(     2003       ,  12             ,4          ,   21   ,   10034.84);
 INSERT INTO SSDX_TMP.ALL_SALESNS2
 VALUES(     2004        ,  1             ,2           ,  22    ,  11034.84);
 
 COMMIT;
 
 
SELECT *
FROM SSDX_TMP.ALL_SALESNS2 ;

SELECT SUM(S.AMOUNT) total_product_type_amount,S.PRD_TYPE_ID
FROM SSDX_TMP.ALL_SALESNS2 S
GROUP BY S.PRD_TYPE_ID;


--2) Write a query to get the previous and next month’s sales amount



COMMIT;

SELECT *
FROM EMPLOYEESTATISTICS

select MAX(SALARY),POSITION
from EMPLOYEESTATISTICS
GROUP by POSITION

select MAX(BENEFITS),POSITION
from EMPLOYEESTATISTICS
WHERE SALARY>40000
GROUP by POSITION
--------------------------------------------------------
create table ssdx_tmp.RoomNs(RoomId Number,RoomArea Number);
create table ssdx_tmp.GuestNs(GuestId Number,GuestName Varchar2(50), Guest_Tel Number);
create table ssdx_tmp.ContractNs (ContractId number, GuestId number,RoomId number, Contract_Date date, Contract_Amount number, Active_char number(1));
create table ssdx_tmp.paymentNs (payment_id number, Contract_id number, payment_date date); 

select *
from ssdx_tmp.RoomNs;
select *
from ssdx_tmp.GuestNs;
select *
from ssdx_tmp.ContractNs;
select *
from ssdx_tmp.paymentNs;

insert into ssdx_tmp.RoomNs
values(1,65);
insert into ssdx_tmp.RoomNs
values(2,165);
insert into ssdx_tmp.RoomNs
values(3,435);
insert into ssdx_tmp.RoomNs
values(4,50);
insert into ssdx_tmp.RoomNs
values(5,622);
insert into ssdx_tmp.RoomNs
values(6,50);
insert into ssdx_tmp.RoomNs
values(7,68);
insert into ssdx_tmp.RoomNs
values(8,65);

insert into ssdx_tmp.GuestNs
values(1,'Nicolas',71272856);
insert into ssdx_tmp.GuestNs
values(2,'Joe Bernard',71272857);
insert into ssdx_tmp.GuestNs
values(3,'Georges',71268456);
insert into ssdx_tmp.GuestNs
values(4,'Roni',71712568);
insert into ssdx_tmp.GuestNs
values(6,'charbel',79170430);


insert into  ssdx_tmp.ContractNs
values(1,2,6,to_date('2020-05-12','YYYY-MM-DD'),2500,1);
insert into  ssdx_tmp.ContractNs
values(2,6,2,to_date('2020-05-13','YYYY-MM-DD'),2700,0);
insert into  ssdx_tmp.ContractNs
values(3,4,5,to_date('2021-05-12','YYYY-MM-DD'),4500,1);
insert into  ssdx_tmp.ContractNs
values(4,1,8,to_date('2010-05-12','YYYY-MM-DD'),3500,0);

delete from ssdx_tmp.ContractNs
where ContractId=1;
--1.	Write a query that displays all vacant rooms.
select Distinct(c.roomId)
from ssdx_tmp.Contractns c,ssdx_tmp.roomns r
where r.roomid!=c.roomid

--2.	Write a query that displays all occupied rooms.
select Distinct(c.roomId)
from ssdx_tmp.Contractns c,ssdx_tmp.roomns r
where r.roomid=c.roomid

--3.	Write a query that displays all contract (contract_id, room_id, guest_name, contract_date, contract_amount, contract_status)
--	The field Active in the table CONTACT can have two values (‘1’  for Active, ‘0’  ‘Inactive”)
--	The field contract_status in the query must equal “Active” or “Inactive”

select c.contractid,c.roomid ,c.guestid,c.contract_date,c.contract_amount,g.guestname,
CASE WHEN Active_char =1 THEN 'ACTIVE' 
  ELSE 'INACTIVE'
    END CONTRACT_STATUES
from ssdx_tmp.contractns c , ssdx_tmp.guestns g
where c.guestid=g.guestid


--4.	Write a query that displays the amount of money paid for an active room
select *
from ssdx_tmp.contractns c
where c.active_char=1

--5.	Write a query that displays the amount of money until now for each room.
select c.roomid, c.contract_amount
from ssdx_tmp.contractns c


---------------------------------------------------------------
select*
from employeestatistic
--Develop a query that gives the smallest figure of the Benefits column, of the employees who are Managers.
select MIN(E.BENEFIT)
from employeestatistic e
where e.position like 'MANAGER'

--Develop a query that gives the employeeidno and the maximum salary of employees by position.
select MAX(E.SALARY), E.POSITION
from employeestatistic e
GROUP BY E.POSITION

--develop a query that gives the employeeidno and the maximum benefits of employee by position if the salary>40000
select MAX(E.SALARY), E.POSITION,E.EMPLOYEEID
from employeestatistic e
WHERE E.SALARY>40000
ORDER BY E.EMPLOYEEID
GROUP BY E.POSITION


--Exercise 7:
create table ssdx_tmp.salespersonNs(id number,Name varchar2(20), age number, salary number);
create table ssdx_tmp.CustomerNs(id number,Name varchar2(20), city varchar2(20), Industry_type varchar2(1));
create table ssdx_tmp.OrdersNS(Number1 number,order_date date, Cust_id number, salesperson_id number,Amount number); 

select *
from ssdx_tmp.salespersonNs;

select *
from ssdx_tmp.CustomerNs;

select *
from ssdx_tmp.OrdersNS;

insert into ssdx_tmp.salespersonNs
values(1,'Abe',61,140000);
insert into ssdx_tmp.salespersonNs
values(2,'Bob',34,44000);
insert into ssdx_tmp.salespersonNs
values(5,'Chris',34,40000);
insert into ssdx_tmp.salespersonNs
values(7,'Dan',41,52000);
insert into ssdx_tmp.salespersonNs
values(8,'Ken',57,115000);
insert into ssdx_tmp.salespersonNs
values(11,'Joe',38,38000);

insert into ssdx_tmp.customerns
values(4,'Samsonic','Pleasant','J');
insert into ssdx_tmp.customerns
values(6,'Panasung','Oaktown','J');
insert into ssdx_tmp.customerns
values(7,'Samony','jackson','B');
insert into ssdx_tmp.customerns
values(9,'Orange','Jackson','B');

insert into ssdx_tmp.ordersns
values(10,to_date('1996-02-08','YYYY-DD-MM'),4,2,540);

insert into ssdx_tmp.ordersns
values(20,to_date('1999-30-01','YYYY-DD-MM'),4,8,1800);

insert into ssdx_tmp.ordersns
values(30,to_date('1995-14-07','YYYY-DD-MM'),9,1,460);

insert into ssdx_tmp.ordersns
values(40,to_date('1998-29-01','YYYY-DD-MM'),7,2,2400);

insert into ssdx_tmp.ordersns
values(50,to_date('1998-03-02','YYYY-DD-MM'),6,7,600);

insert into ssdx_tmp.ordersns
values(60,to_date('1998-02-03','YYYY-DD-MM'),6,7,720);

insert into ssdx_tmp.ordersns
values(70,to_date('1998-06-05','YYYY-DD-MM'),9,7,150);

commit;
--a. The names of all salespeople that have an order with Samsonic.
select distinct(s.name)
from ssdx_tmp.Salespersonns s, ssdx_tmp.customerns c, ssdx_tmp.ordersNs o
where  c.name like 'Samsonic'
group by s.name

--b. The names of all salespeople that do not have any order with Samsonic.
select distinct(s.name)
from ssdx_tmp.Salespersonns s, ssdx_tmp.customerns c, ssdx_tmp.ordersNs o
where not exists (select c.name
from ssdx_tmp.customerns where c.name like 'Samsonic')
group by s.name


--Write a SQL statement to insert rows into a table called highAchiever (Name, Age)-
-- where a salesperson must have a salary of 100,000 or greater to be included in
-- the table

create table ssdx_tmp.highAchiever(name varchar2(20),age number)
insert into ssdx_tmp.highachiever(name,age) select s.name,s.age from ssdx_tmp.salespersonns s where s.salary>100000 

select*
from ssdx_tmp.highachiever
--Exercise 8

CREATE TABLE SSDX_TMP.EMPLOYEEEX8(ID NUMBER, LS VARCHAR2(20),FS VARCHAR2(15), SALARY NUMBER , HIREDATE DATE, MID NUMBER)
SELECT * 
FROM SSDX_TMP.EMPLOYEEEX8
INSERT INTO SSDX_TMP.EMPLOYEEEX8
VALUES (100,'STEVEN','KING',24000,TO_DATE('2003-17-06','YYYY-DD-MM'),0),
INSERT INTO SSDX_TMP.EMPLOYEEEX8
VALUES (102,'LEX','DEHOLD',17000,TO_DATE('2001-13-01','YYYY-DD-MM'),100);
INSERT INTO SSDX_TMP.EMPLOYEEEX8
VALUES (103,'ALEX','HUNOLD',9000,TO_DATE('2006-03-01','YYYY-DD-MM'),102),
INSERT INTO SSDX_TMP.EMPLOYEEEX8
VALUES (105,'DAVID','AUSTON',4800,TO_DATE('2005-25-06','YYYY-DD-MM'),103),
INSERT INTO SSDX_TMP.EMPLOYEEEX8
VALUES (146,'KAREN','PARTNER',13500,TO_DATE('2005-05-01','YYYY-DD-MM'),100),
INSERT INTO SSDX_TMP.EMPLOYEEEX8
VALUES (156,'JANETTE','KING',10000,TO_DATE('2004-30-01','YYYY-DD-MM'),146)
--Retrieve the top hierarchy of Austin David (id 105) as show the result as follows:
select
       E.LS,
       E.FS
      
from SSDX_TMP.EMPLOYEEEX8 E
WHERE E.ID=105 OR E.ID=(select E.MID
      From SSDX_TMP.EMPLOYEEEX8 E
      WHERE E.ID=105) OR  E.ID=(select E.MID
      From SSDX_TMP.EMPLOYEEEX8 E
      WHERE E.ID=(select E.MID
      From SSDX_TMP.EMPLOYEEEX8 E
      WHERE E.ID=105)
      ) 
  ORDER BY E.ID DESC
      
--. Starting with King, retrieve all level-4 employees.
select E.ID , E.FS ||' '|| E.LS FULL_NAME
from SSDX_TMP.EMPLOYEEEX8 E
WHERE FS LIKE 'KING'

--3. For each employee, retrieve the ratio of his salary to the salary of his manager. Return the rows in descending order of the ratio
SELECT E.ID, E.SALARY ,E.MID
FROM SSDX_TMP.EMPLOYEEEX8 E
WHERE col_ratio =(select e.id.salary/e.mid.salary Ratios
                         from SSDX_TMP.EMPLOYEEEX8 e)
                    
                    
       SELECT ||'e'||E.ID||'e'||E.SALARY||'e'||
       
       FROM   SSDX_TMP.EMPLOYEEEX8 E
       WHERE E.MID= E.ID;
                    
     select salary_mas2oul.*,||'e'||E.ID||'e'||E.SALARY||'e'||               
                    
  from 
  -- (select E.SALARY 
   --from SSDX_TMP.EMPLOYEEEX8 E
   --where E.ID= E.mID ) salary_mas2oul; 


