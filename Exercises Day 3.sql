create table ssdx_tmp.ShipsNS1
( name varchar2(20),
  class varchar2(20),
  Launched date)
  
select *
from ssdx_tmp.ShipsNS1
insert into ssdx_tmp.ShipsNS1(name,class,launched)
values('Marinates','Kongo',to_date('1979-05-12','YYYY-MM-DD'))

insert into ssdx_tmp.ShipsNS1(name,class,launched)
values('Crawlers','Cargo',to_date('1948-03-25','YYYY-MM-DD'))

insert into ssdx_tmp.ShipsNS1(name,class,launched)
values('Japanese Warrior','Kongo',to_date('1968-04-23','YYYY-MM-DD'))

insert into ssdx_tmp.ShipsNS1(name,class,launched)
values('American Sail','loft',to_date('1989-05-12','YYYY-MM-DD'))

insert into ssdx_tmp.ShipsNS1(name,class,launched)
values('Leb01','Lebanon',to_date('2019-10-17','YYYY-MM-DD'))

 commit ;
create table ssdx_tmp.classesNs
( class varchar2(20),
  type varchar2(20),
  country varchar(20),
  NumGun number,
  bore number,
  displacement number)
  
  insert into ssdx_tmp.classesNs(class,type,country,numgun,bore,displacement)
   values('Kongo','small','US',5500,16,1)
    insert into ssdx_tmp.classesNs(class,type,country,numgun,bore,displacement)
   values('cargo','Medium','Britain',4500,20,2)
   
    insert into ssdx_tmp.classesNs(class,type,country,numgun,bore,displacement)
   values('loft','medium','Jaban',2000,13,2)
   
    insert into ssdx_tmp.classesNs(class,type,country,numgun,bore,displacement)
   values('Lebanon','small','LB',6000,16,3)
   
    insert into ssdx_tmp.classesNs(class,type,country,numgun,bore,displacement)
   values('TEST','S','TE',5500,20,2)
   select *
   from ssdx_tmp.classesNs;
   
    commit ;
   
create table ssdx_tmp.BattelsNS
( name varchar2(20),
  dates date
)

select *
from ssdx_tmp.Battelsns

insert into ssdx_tmp.Battelsns(name, dates)
values('United fights',to_date('1989-12-05','YYYY-DD-MM'))

insert into ssdx_tmp.Battelsns(name, dates)
values('Britain crawling',to_date('1975-25-03','YYYY-DD-MM'))

insert into ssdx_tmp.Battelsns(name, dates)
values('fighting',to_date('1988-23-04','YYYY-DD-MM'))
 commit ;

create table ssdx_tmp.ShipNs
( Ship varchar2(20),
  Battle varchar2(20),
  Result varchar2(20));
  
insert into ssdx_tmp.ShipNs(ship, battle,result)
values('Marinates','United fights','Win')
insert into ssdx_tmp.ShipNs(ship, battle,result)
values('Crawlers','Fighting','Loose')
insert into ssdx_tmp.ShipNs(ship, battle,result)
values('Japanese warrior','Britain crawlin','Win')
 commit ;

select *
from ssdx_tmp.classesns;

select NumGun,country 
from ssdx_tmp.classesns
order by Numgun desc
fetch first 1 row only

select c.class, shs.name
from ssdx_tmp.classesns c,ssdx_tmp.battelsns b,ssdx_tmp.shipsns1 shs,ssdx_tmp.shipns sh
where c.class=shs.class
or shs.name=sh.ship
or sh.battle=b.name

select c.class,shs.class,sh.battle,sh.ship, shs.name,c.bore
from ssdx_tmp.classesns c,ssdx_tmp.battelsns b,ssdx_tmp.shipsns1 shs,ssdx_tmp.shipns sh
where c.bore=16

select *
from ssdx_tmp.classesns c,ssdx_tmp.battelsns b,ssdx_tmp.shipsns1 shs,ssdx_tmp.shipns sh
where c.class like 'Kongo' 
and  shs.name like 'Kongo'

create table ssdx_tmp.Departmentns(Did number,Dname Varchar2(20))
select *
from ssdx_tmp.departmentns
insert into ssdx_tmp.departmentns(did, dname)
values(1,'Development')
insert into ssdx_tmp.departmentns(did, dname)
values(2,'QA')
insert into ssdx_tmp.departmentns(did, dname)
values(3,'IM-BI')
insert into ssdx_tmp.departmentns(did, dname)
values(4,'HR')

 commit ;

create table ssdx_tmp.Employeens(Eid number,EName Varchar2(20),Did number, Esalary number)
select*
from ssdx_tmp.Employeens
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(1,'Mirella',1,1200)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(2,'Diana',1,1250)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(3,'Souha',1,1350)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(4,'Joelle',1,1350)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(5,'Josephine',2,1100)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(6,'Mary May',3,1100)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(7,'Jina',3,1900)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(8,'Rami',3,600)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(9,'Fadi Afif',3,1900)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(10,'Nawal',4,1000)
insert into ssdx_tmp.Employeens(eid,ename,did,esalary)
values(11,'Nariman',4,900);

 commit ;

select ssdx_tmp.employeens.eid , ssdx_tmp.departmentns.did ,ssdx_tmp.employeens.EName ,ssdx_tmp.departmentns.dname,ssdx_tmp.employeens.esalary, rownum Salary_seq_dep
from ssdx_tmp.employeens
join ssdx_tmp.departmentns
on ssdx_tmp.employeens.did = ssdx_tmp.departmentns.did  
order by did,esalary,Dname;

/* Exercise 3*/
CREATE TABLE ITEMSNS
(
  Id NUMBER NOT NULL PRIMARY KEY,
  NAME VARCHAR2 (20),
  Price NUMBER (7, 2)
);
INSERT INTO ITEMSNS VALUES (1,'cup', 1.20);
INSERT INTO ITEMSNS VALUES (2,'book', 49.99);
INSERT INTO ITEMSNS VALUES (3,'mobile', 89.99);
INSERT INTO ITEMSNS VALUES (4,'coke', 0.78);
INSERT INTO ITEMSNS VALUES (5,'pencil', 1.35);
INSERT INTO ITEMSNS VALUES (6,'dollar', 1.00);
INSERT INTO ITEMSNS VALUES (7,'door', 150.00);
INSERT INTO ITEMSNS VALUES (8,'oracle', 19990.00);
INSERT INTO ITEMSNS VALUES (9,'carpet', 122.40);
INSERT INTO ITEMSNS VALUES (10,'apple', 1.05);
INSERT INTO ITEMSNS VALUES (11,'table', 198.00);
INSERT INTO ITEMSNS VALUES (12,'cd/r', 1.20);
INSERT INTO ITEMSNS VALUES (13,'back pack', 21.53);
INSERT INTO ITEMSNS VALUES (14,'laptop', 999.50);
INSERT INTO ITEMSNS VALUES (15,'air', 0.00);
INSERT INTO ITEMSNS VALUES (16,'tv', 310.00);
INSERT INTO ITEMSNS VALUES (17,'color', 2.22);
INSERT INTO ITEMSNS VALUES (18,'bun_bun', 2.50);
INSERT INTO ITEMSNS VALUES (19,'bun%bun', 0.80);
INSERT INTO ITEMSNS VALUES (20,'bun.bun', 1.20);

 commit ;

SELECT * FROM itemsNS ;
SELECT *
FROM itemsNS ORDER BY PRICE
fetch first 5 row only;

SELECT *
FROM itemsNS
WHERE NAME LIKE '%\%%' ESCAPE '\';


/* EXERCISE 4*/
CREATE TABLE SSDX_TMP.mm_movie_typeNS
     (Movie_cat_id     NUMBER (2),
      Movie_category VARCHAR (12),
      CONSTRAINT movie_cat_id_pk PRIMARY KEY (movie_cat_id));

CREATE TABLE ssdx_tmp.mm_pay_typeNS
     (Payment_methods_id   NUMBER (2),
      Payment_methods       VARCHAR (14)
      
      /*,payment_methods_id_pk PRIMARY KEY )*/
      );

CREATE TABLE SSDX_TMP.mm_memberNS
  (Member_id     NUMBER (4),
   Last              VARCHAR (12),
   First              VARCHAR (8),
   License_no     VARCHAR (9),
   License_st      VARCHAR (2),
   Credit_card    VARCHAR (12),
   Suspension     VARCHAR (1) DEFAULT 'N',
   Mailing_list      VARCHAR (1)
   /*CONSTRAINT cust_custid_pk PRIMARY KEY (member_id),
   CONSTRAINT cust_credcard_ck CHECK (LENGTH (credit_card) = 12)*/);



CREATE TABLE SSDX_TMP.mm_movieNS
     (Movie_id         NUMBER (4),
      Movie_title      VARCHAR (40),
      Movie_cat_id   NUMBER (2) NOT NULL,
      Movie_value    DECIMAL (5, 2),
      Movie_qty       NUMBER (2)
      /*CONSTRAINT movies_id_pk PRIMARY KEY (movie_id),
      CONSTRAINT movie_type_fk FOREIGN KEY (movie_cat_id) REFERENCES mm_movie_type (movie_cat_id),
      CONSTRAINT movies_value_ck CHECK (movie_value BETWEEN 5 and 100)*/);

CREATE TABLE SSDX_TMP.mm_rentalNS
      (Rental_id                   NUMBER (4),
       Member_id                 NUMBER (4),
       Movie_id                    NUMBER (4),
       Checkout_date            DATE DEFAULT SYSDATE,
       Checkin_date              DATE,
       Payment_methods_id   NUMBER (2)
       /*CONSTRAINT rentals_pk PRIMARY KEY (rental_id),
       CONSTRAINT member_id_fk FOREIGN KEY (member_id) REFERENCES mm_member (member_id),
       CONSTRAINT movie_id_fk FOREIGN KEY (movie_id) REFERENCES mm_movie (movie_id),
       CONSTRAINT pay_id_fk FOREIGN KEY (payment_methods_id) REFERENCES mm_pay_type (payment_methods_id)*/);



INSERT INTO SSDX_TMP.mm_memberNS (member_id, last, first, license_no, license_st, credit_card) VALUES (10, 'Tangier', 'Tim', '111111111', 'VA', '123456789111');
INSERT INTO SSDX_TMP.mm_memberNS (member_id, last, first, license_no, license_st, credit_card, mailing_list) VALUES (11, 'Ruth', 'Babe', '222222222', 'VA', '222222222222', 'Y');
INSERT INTO SSDX_TMP.mm_memberNS (member_id, last, first, license_no, license_st, credit_card, mailing_list) VALUES (12, 'Maulder', 'Fox', '333333333', 'FL', '333333333333', 'Y');
INSERT INTO SSDX_TMP.mm_memberNS (member_id, last, first, license_no, license_st, credit_card) VALUES (13, 'Wild', 'Coyote', '444444444', 'VA', '444444444444');
INSERT INTO SSDX_TMP.mm_memberNS (member_id, last, first, license_no, license_st, credit_card, mailing_list) VALUES (14, 'Casteel', 'Joan', '555555555', 'VA', '555555555555', 'Y');

INSERT INTO SSDX_TMP.mm_movie_typeNS (movie_cat_id, movie_category) VALUES ('1', 'SciFi');
INSERT INTO SSDX_TMP.mm_movie_typeNS (movie_cat_id, movie_category) VALUES ('2', 'Horror');
INSERT INTO SSDX_TMP.mm_movie_typeNS (movie_cat_id, movie_category) VALUES ('3', 'Western');
INSERT INTO SSDX_TMP.mm_movie_typeNS (movie_cat_id, movie_category) VALUES ('4', 'Comedy');
INSERT INTO SSDX_TMP.mm_movie_typeNS (movie_cat_id, movie_category) VALUES ('5', 'Drama');

INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (1, 'Alien', '1', 10.00, 5);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (2, 'Bladerunner', '1', 8.00, 3);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (3, 'Star Wars', '1', 15.00, 11);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (4,'Texas Chainsaw Masacre', '2', 7.00, 2);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (5, 'Jaws', '2', 7.00, 1);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (6, 'The good, the bad and the ugly', '3', 7.00, 2);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (7, 'Silverado', '3', 7.00, 1);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (8, 'Duck Soup', '4', 5.00, 1);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (9, 'Planes, trains and automobiles', '4', 5.00, 3);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (10, 'Waking Ned Devine', '4', 12.00, 4);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (11, 'Deep Blue Sea', '5', 14.00, 3);
INSERT INTO SSDX_TMP.mm_movieNS (movie_id, movie_title, movie_cat_id, movie_value, movie_qty) VALUES (12, 'The Fifth Element', '5', 15.00, 5);

INSERT INTO ssdx_tmp.mm_pay_typeNS (payment_methods_id, payment_methods) VALUES ('1', 'Account');
INSERT INTO ssdx_tmp.mm_pay_typeNS (payment_methods_id, payment_methods) VALUES ('2', 'Credit Card');
INSERT INTO ssdx_tmp.mm_pay_typeNS (payment_methods_id, payment_methods) VALUES ('3', 'Check');
INSERT INTO ssdx_tmp.mm_pay_typeNS (payment_methods_id, payment_methods) VALUES ('4', 'Cash');
INSERT INTO ssdx_tmp.mm_pay_typeNS (payment_methods_id, payment_methods) VALUES ('5', 'Debit Card');

INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (1,'10', '11', '2');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (2,'10', '8', '2');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (3,'12', '6', '2');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (4,'13', '3', '5');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (5,'13', '5', '5');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (6,'13', '11', '5');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (7,'14', '10', '2');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (8,'14', '7', '2');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (9,'12', '4', '4');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (10,'12', '12', '4');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (11,'12', '3', '4');
INSERT INTO SSDX_TMP.mm_rentalNS (rental_id, member_id, movie_id, payment_methods_id) VALUES (12,'13', '4', '5');
UPDATE SSDX_TMP.mm_rentalNS SET checkout_date = '04-JUN-03';

 commit ;

SELECT *
FROM ssdx_tmp.mm_moviens;
SELECT *
FROM ssdx_tmp.mm_movie_typens;
select*
from ssdx_tmp.mm_memberns;
select *
from ssdx_tmp.mm_rentalns
order by movie_id
--1-Write a query that will list all movie categories together with the count of movies in each category.
--CAGive the column with the count in it a meaningful name such as IN STOCK.

select distinct rental_id
from ssdx_tmp.mm_rentalns
order by rental_id

select  sum(m.movie_qty) , mt.movie_category
from ssdx_tmp.mm_moviens m
join ssdx_tmp.mm_movie_typens mt
on m.movie_cat_id=mt.movie_cat_id;

--2-Write a query that will list titles and checkout dates for all movies that were signed out by Wild Coyote (member_id = 13)
select m.movie_title,r.checkout_date
from ssdx_tmp.mm_moviens m
join ssdx_tmp.mm_rentalns r
on m.movie_id = r.movie_id
join ssdx_tmp.mm_memberns mm
on r.member_id=mm.member_id
where r.member_id=13;

--3-Write an SQL sub query that will list all movies (movie ids and titles) of all movies that have never been rented.
select m.movie_id,m.movie_title
from ssdx_tmp.mm_moviens m 
where  exists( 
select r.movie_id
from ssdx_tmp.mm_rentalns r
)

select movie_id
from ssdx_tmp.mm_moviens m
union
select movie_id
from ssdx_tmp.mm_rentalns;

--4-Write a query that will list all members(member id, first name, last name) and the number of movies they 
--have rented who have rented at least one movie. 
--Order the result set so that it shows the largest number of movies rented as the first row

select m.movie_id , m.movie_title, r.rental_id
from ssdx_tmp.mm_moviens m
full outer join ssdx_tmp.mm_rentalns r
on m.movie_id=r.movie_id
where r.rental_id is null;


---5- Write a query that will display the largest number of movies rented by one member and that member’s name.
select  count(r.rental_id) Movie_Count,mm.member_id--mm.member_id , mm.first,mm.last

from ssdx_tmp.mm_rentalns r
full outer join ssdx_tmp.mm_memberns mm
on r.member_id=mm.member_id
group by mm.member_id;




--Exercise 5---

CREATE TABLE SSDX_TMP.DIRECTORNS 
(
  DIRECTOR_ID                       VARCHAR2 (10),
  DIRECTOR_FNAME                 VARCHAR2 (20),
  DIRECTOR_LNAME                 VARCHAR2 (20),
  DATE_LAST_MOVIE_RELEASED DATE,
  EMAIL_ADDRESS                   VARCHAR2 (100)
);

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0010', 'JOHN', 'SCOTT', TO_DATE ('10-01-1997', 'DD-MM-YYYY'), 'SCOTTJAEMAIL.COM');

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0011', 'RALPH', 'MCKINSE', TO_DATE ('05-01-2003', 'DD-MM-YYYY'), 'MCKRA07ALSP.COM');

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0012', 'ADRIAN', 'MCGRAW', TO_DATE ('03-08-2000', 'DD-MM-YYYY'), 'MCGAWAEMAIL.COM');

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0013', 'NICOLE', 'DREW', TO_DATE ('10-01-2003', 'DD-MM-YYYY'), '');

INSERT INTO SSDX_TMP.DIRECTORNS (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0014', 'RUPERT', 'CONNERY', TO_DATE ('06-12-2002', 'DD-MM-YYYY'), 'RCONNAJADE.COM');

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0015', 'SIDNEY', 'SHEWMAKER', TO_DATE ('15-09-2000', 'DD-MM-YYYY'), 'SIDNEYSHEWASHEW.COM');

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0016', 'WILLIAM', 'TIPPER', TO_DATE ('03-08-2000', 'DD-MM-YYYY'), 'TIPPERARODEO.COM');

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0017', 'GEOFFREY', 'GREENE', TO_DATE ('16-11-2002', 'DD-MM-YYYY'), 'GEOGREENASHELL.COM');

INSERT INTO SSDX_TMP.DIRECTORNS  (DIRECTOR_ID, DIRECTOR_FNAME, DIRECTOR_LNAME, DATE_LAST_MOVIE_RELEASED, EMAIL_ADDRESS)
VALUES ('DR0018', 'MARIO', 'LOPEZ', TO_DATE ('12-12-2002', 'DD-MM-YYYY'), 'LOPEZMARAMAILS.COM');
date_last_movie_released date varchar2(100) varchar2(100) y 

 commit ;

SELECT *
FROM SSDX_TMP.DIRECTORNS D;

--1-	SELECT * DIRECTOR_LNAME FROM DIRECTOR;--
SELECT D.DIRECTOR_LNAME
FROM SSDX_TMP.DIRECTORNS D;

--2-	SELECT DIRECTOR_LNAME DIRECTOR LAST NAME FROM DIRECTOR;--
SELECT D.DIRECTOR_LNAME ,D.DIRECTOR_LNAME  
FROM SSDX_TMP.DIRECTORNS D;

--3-	SELECT DIRECTOR_LNAME 'DIRECTOR LAST NAME' FROM DIRECTOR;--
SELECT DIRECTOR_LNAME DIRECTOR_LAST_NAME
FROM SSDX_TMP.DIRECTORNS;

--4-	SELECT DIRECTOR_LNAME DIRECTOR_FNAME FROM DIRECTOR;--
SELECT DIRECTOR_LNAME, DIRECTOR_FNAME 
FROM SSDX_TMP.DIRECTORNS;

--5-	SELECT DIRECTOR_LNAME FROM DIRECTORS;--
SELECT DIRECTOR_LNAME 
FROM SSDX_TMP.DIRECTORNS;

--6-	SELECT DIRECTOR_ID, EMAIL_ADDRESS FROM DIRECTOR WHERE EMAIL_ADDRESS = NULL; --
SELECT DIRECTOR_ID, EMAIL_ADDRESS 
FROM SSDX_TMP.DIRECTORNS 
WHERE EMAIL_ADDRESS IS NULL; 

--7-	SELECT DIRECTOR_LNAME FROM DIRECTOR WHERE DIRECTOR_LNAME LIKE S5;--
SELECT DIRECTOR_LNAME 
FROM SSDX_TMP.DIRECTORNS 
WHERE DIRECTOR_LNAME LIKE 'S5';

--8-	SELECT DIRECTOR_LNAME FROM DIRECTOR WHERE DATE_LAST_MOVIE_RELEASED = '12-12-02';--
SELECT DIRECTOR_LNAME 
FROM SSDX_TMP.DIRECTORNS 
WHERE DATE_LAST_MOVIE_RELEASED = TO_DATE('12-12-02','DD-MM-YY')

--9-	SELECT DIRECTOR_LNAME FROM DIRECTOR WHERE DIRECTOR_FNAME = Mario;--
SELECT DIRECTOR_LNAME 
FROM SSDX_TMP.DIRECTORNS 
WHERE DIRECTOR_FNAME = 'MARIO';

--10-	SELECT * FROM DIRECTOR GROUP BY SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2);--
SELECT DATE_LAST_MOVIE_RELEASED
FROM SSDX_TMP.DIRECTORNS 
GROUP BY(DATE_LAST_MOVIE_RELEASED, 8, 2);

--11-	SELECT COUNT(*) FROM DIRECTOR GROUP BY SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2) WHERE SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2) = 03;--
SELECT count(*)
FROM SSDX_TMP.DIRECTORNS 
WHERE substr(DATE_LAST_MOVIE_RELEASED, 8, 2) = 03
GROUP BY (DATE_LAST_MOVIE_RELEASED); 

SELECT COUNT(*) 
FROM SSDX_TMP.DIRECTORNS 
GROUP BY SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2) 
WHERE SUBSTR(DATE_LAST_MOVIE_RELEASED, 8, 2) = 03;

SELECT to_char(sysdate,'MM/DD/YYY')
FROM DUAL
SELECT TO_NUMBER(3,'999')
FROM DUAL

--EXERCISE 6--
CREATE TABLE SSDX_TMP.EMPLOYEENSSSS3 (EMPLOYEE_ID NUMBER,
                                  	FIRST_NAME	VARCHAR(20),
                                    LAST_NAME	VARCHAR(20),
                                    PHONE VARCHAR(20) ,
                                    HIRE_DATE DATE,
                                    JOB_ID VARCHAR(20),
                                    SALARY NUMBER ,
                                    DEPARTMENT_ID NUMBER)
DROP TABLE SSDX_TMP.EMPLOYEENSSSS2                                   
SELECT *
FROM SSDX_TMP.EMPLOYEENSSSS3
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(160,	'Louise',	'Doran','011.44.1345.629268',	TO_DATE('2005-12-15','yyyy-mm-dd'),	11,	7500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(161,	'SARAH',	'SEWAL','012.44.1345.529268',	TO_DATE('2016-11-03','yyyy-mm-dd'),	12,	7000, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(162,	'Louise1',	'Doran1','011.44.1346.129268',	TO_DATE('2005-11-11','yyyy-mm-dd'),	13,	10500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(163,	'Louise2',	'Doran2','011.44.1346.229268',	TO_DATE('2007-03-19','yyyy-mm-dd'),	14,	9500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(164,	'Louise3',	'Doran3','014.44.1346.329268',	TO_DATE('2008-01-24','yyyy-mm-dd'),	15,	7200, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(165,	'Louise4',	'Doran4','011.44.1346.529268',	TO_DATE('2008-02-23','yyyy-mm-dd'),	16,	6800, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(166,	'Louise5',	'Doran5','021.44.1346.629268',	TO_DATE('2008-03-24','yyyy-mm-dd'),	17,	6400, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(167,	'Louise6',	'Doran6','011.44.1346.729268',	TO_DATE('2008-04-21','yyyy-mm-dd'),	18,	6200, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(168,	'Louise7',	'Doran7','014.44.1343.929268',	TO_DATE('2005-03-11','yyyy-mm-dd'),	19,	11500, 80);
INSERT INTO SSDX_TMP.EMPLOYEENSSSS3
VALUES(169,	'Louise8',	'Doran8','018.44.1343.829268',	TO_DATE('2006-03-23','yyyy-mm-dd'),	20,	10000, 80);

 commit ;
--1.	Write a query to display the name (first name and last name) of the employees who earn more than the employee whose ID is 163.--
 SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY
 FROM SSDX_TMP.EMPLOYEENSSSS3 E
 WHERE SALARY>(SELECT E.SALARY
               FROM SSDX_TMP.EMPLOYEENSSS E
               WHERE E.EMPLOYEE_ID=163)
               
--2.	Write a query to display the name ( irst name and last name ), salary, department id, job id for the employees who have the same job as the one having id169--
 SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY,E.JOB_ID
 FROM SSDX_TMP.EMPLOYEENSSSS3 E
WHERE E.JOB_ID= (SELECT E.JOB_ID
               FROM SSDX_TMP.EMPLOYEENSSS E
               WHERE E.EMPLOYEE_ID=169)
               
--3.	List all the employees who has the minimum salary in the company--
SELECT *
FROM SSDX_TMP.EMPLOYEENSSSS3 E
WHERE E.SALARY=(SELECT MIN(E.SALARY)
FROM SSDX_TMP.EMPLOYEENSSS E)

--4.	List all the employees who earn more than the average salary--
SELECT *
FROM SSDX_TMP.EMPLOYEENSSSS3 E
WHERE E.SALARY>(SELECT AVG(E.SALARY)
FROM SSDX_TMP.EMPLOYEENSSS E)

--5.	List all the employees who live in the same area as the newest employee --
SELECT *
FROM SSDX_TMP.EMPLOYEENSSSS3 E
WHERE SUBSTR(E.PHONE,1,3) =( SELECT SUBSTR(E.PHONE,1,3)
                  FROM SSDX_TMP.EMPLOYEENSSSS3 E
                  WHERE E.HIRE_DATE=(SELECT MAX(E.HIRE_DATE)
                  FROM SSDX_TMP.EMPLOYEENSSSS3 E
                 )
                  )
                   
