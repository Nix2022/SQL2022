create table ssdx_tmp.StringNs
(Text varchar(50))

select *
from ssdx_tmp.StringNs
insert into ssdx_tmp.StringNs(text)
values('abc,def,ghi')
 commit ;
/*1.	get ALL characters of up TO the FIRST comma.*/
select Substr(text, 1, 3)
from ssdx_tmp.stringns

select Substr('abc,def,ghi', 1, 3)
from dual




/*2.	get the character(s) in between the commas*/
select Substr(text, 1, 3) || Substr(text, 5, 3) || Substr(text, 9, 3) text2
from ssdx_tmp.stringns

SELECT SUBSTR('ABC,DEF,GHI',INSTR('ABC,DEF,GHI',',',1,1)+1,INSTR('ABC,DEF,GHI',',',1,2)-INSTR('ABC,DEF,GHI',',',1,1)-1)
FROM DUAL;

/*3.	get the character(s) after the last comma*/
SELECT SUBSTR('ABC,DEF,GHI',INSTR('ABC,DEF,GHI',',',3,3)-3)
FROM DUAL

SELECT SUBSTR('ABC,DEF,GHI',INSTR('ABC,DEF,GHI',',',-1)+1)
FROM DUAL

create table ssdx_tmp.StringNs2
(Text varchar(50))
insert into ssdx_tmp.StringNs2(text)
values(' Helloworld')
select *
from ssdx_tmp.StringNs2
 commit ;
/*4.	Find the position of the last ‘l’*/
select instr(text,'l',-1,1)
from ssdx_tmp.StringNs2

/*5.	Turn it to “world hello”*/
select substr(text,7,5)||' '|| substr(text,2,5) turn
from ssdx_tmp.StringNs2



create table ssdx_tmp.LandNsalloum
(
Land_id number,
Dimensions1 number,
Dimensions2 number,
price number);

/*select regxp_substr(dimensions1, '[*]+', 1, level) AS parts
from ssdx_tmp.LandNsalloum*/

insert into ssdx_tmp.LandNsalloum(land_id,dimensions1,dimensions2,price)
values(1,230,400,8280000);

insert into ssdx_tmp.LandNsalloum(land_id,dimensions1,dimensions2,price)
values(2,90,40,3240000);

insert into ssdx_tmp.LandNsalloum(land_id,dimensions1,dimensions2,price)
values(3,250,80,1400000);

insert into ssdx_tmp.LandNsalloum(land_id,dimensions1,dimensions2,price)
values(4,412,157,1293680);
 commit ;
select*
from ssdx_tmp.LandNsalloum


/*6.	Provide the total area of each land */
select Land_id , Dimensions1*Dimensions2 Total_Area
from ssdx_tmp.landnsalloum

/*7.	Give for each land the single square meter price */
select Land_id , Dimensions1*Dimensions2 Total_Area, price/((Dimensions1*Dimensions2)) SQLMPRICE
from ssdx_tmp.landnsalloum

/*9.	Mark each land if it’s expensive (meter price >100$) , mid-priced (between 100 and 50), or cheap (<50)          NOT COMPLETED*/
select Land_id , Dimensions1*Dimensions2 Total_Area, price/((Dimensions1*Dimensions2)) SQLMPRICE
from ssdx_tmp.landnsalloum
where Dimensions1 >100 
 
/*10.	Create the following table : date_frequency*/             
create table ssdx_tmp.date_frequencyNs
(
Customer_id number,
Dates Date,
Freq_format varchar(20));

select *
from ssdx_tmp.date_frequencyNs

insert into ssdx_tmp.date_frequencyns(customer_id,dates,freq_format)
values(4536,to_date('2018/11/20','YYYY/MM/DD'),'Yearly2');
insert into ssdx_tmp.date_frequencyns(customer_id,dates,freq_format)
values(1234,to_date('2019/04/30','YYYY/MM/DD'),'yearly');
insert into ssdx_tmp.date_frequencyns(customer_id,dates,freq_format)
values(5235,to_date('2019/10/20','YYYY/MM/DD'),'daily');
insert into ssdx_tmp.date_frequencyns(customer_id,dates,freq_format)
values(7463,to_date('2019/07/18','YYYY/MM/DD'),'semester');
insert into ssdx_tmp.date_frequencyns(customer_id,dates,freq_format)
values(6346,to_date('2020/01/27','YYYY/MM/DD'),'quarter');
insert into ssdx_tmp.date_frequencyns(customer_id,dates,freq_format)
values(6537,to_date('2019/10/05','YYYY/MM/DD'),'EOM');
insert into ssdx_tmp.date_frequencyns(customer_id,dates,freq_format)
values(8653,to_date('2019/02/03','YYYY/MM/DD'),'half');
 commit ;
--11.	 list the customers who doesn’t have any left payments
select F.CUSTOMER_ID,F.DATES,F.FREQ_FORMAT,
      case F.FREQ_FORMAT when 'Yearly2' then Add_months(F.Freq_Format,24) 
                when  'yearly' then Add_months(F.FREQ_FORMAT,12) 
                   when 'daily' then Next_day(F.FREQ_FORMAT,1) 
                     when 'semester' then Add_months(F.FREQ_FORMAT,3) 
                      when   'quarter' then Add_months(F.FREQ_FORMAT,4) 
                         when  'EOM' then Last_day(F.FREQ_FORMAT) 
                           when  'half' then Add_months(F.FREQ_FORMAT,6)
                             else F.DATES
                             end nix
from ssdx_tmp.date_frequencyns F;
--12.	List the customers who have payments due in the following month
select customer_id,dates,Freq_format,
       case Freq_format when 'Yearly2' then Add_months('20-Nov-2018',24) 
                 when 'yearly' then Add_months('30-Apr-2019',12) 
                 when 'daily' then NEXT_DAY('20-Oct-2019','MONDAY') 
                 when 'semester' then Add_months('18-Jul-2019',3) 
                 when 'quarter' then Add_months('27-Jan-2020',4) 
                 when 'EOM' then Last_day('05-Oct-2019') 
                 when 'half' then add_months('02-Mar-2019',6)
                 else dates
                  end revised_salary 
         from ssdx_tmp.date_frequencyns;
--13.	List the customers who have payments due in 2020
select customer_id,dates,Freq_format, Add_months('20-Nov-2018',24) monty
from ssdx_tmp.date_frequencyns
where Freq_format like 'Yearly2' 




 
 
 
 commit ;
