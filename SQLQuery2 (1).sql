create database riya_bhatt;
create table offices
(office int,
city varchar(50),
region varchar(50),
mgr int,
target numeric(8,2),
sales numeric(8,2),
primary key (office));

create table products
(mfr_id varchar(50),
product_id varchar(50),
description varchar(50),
price numeric(8,2),
qty_on_hand int,
primary key (mfr_id,product_id));

create table salesreps
(empl_num int,
name varchar(50),
age int,
rep_office int,
title varchar(50),
hire_date date,
manager int,
quota numeric(10,2),
sales numeric(10,2),
primary key(empl_num),
foreign key(rep_office) references offices,
foreign key(manager) references salesreps);

create table customers
(cust_num int,
company varchar(50),
cust_rep int,
credit_limit numeric(10,2),
primary key (cust_num),
foreign key (cust_rep) references salesreps);

create table orders
(order_num int,
order_date date,
cust int,
rep int,
mfr varchar(50),
product varchar(50),
qty int,
amount numeric(10,2),
primary key (order_num),
foreign key (cust) references customers,
foreign key (rep) references salesreps,
foreign key (mfr, product) references products);

insert into offices values (22,'Denver','Western',108,300000,186042);
insert into offices values (11,'New York','Eastern',106,575000,692637);
insert into offices values (12,'Chicago','Eastern',104,800000,735042);
insert into offices values (13,'Atlanta','Eastern',105,350000,367911);
insert into offices values (21,'Los Angeles','Western',108,725000,835915);

select * from offices
insert into products values ('REI','2A45C','Ratch Link',79,210);
 insert into products values ('ACI','4100Y','Widget Remover',2750,25);
 insert into products values ('QSA','XK47','Reducer',355,38);
 insert into products values ('BIC','41672','Plate',180,0);
 insert into products values ('IMM','779C','900-LB Brace',1875,9);
 insert into products values ('ACI','41003','Size 3 Widget',107,207);
 insert into products values ('ACI','41004','Size 4 widget',117,139);
 insert into products values ('BIC','41003','Handle',625,3);
 insert into products values ('IMM','887P','Brace Pin',250,24);
 insert into products values ('QSA','XK48','Reducer',134,263);
 insert into products values ('REI','2A44L','Left Hinge',4500,12);
 insert into products values ('FEA','112','Housing',148,115);
 insert into products values ('IMM','887H','Brace Holder',54,223);
 insert into products values ('BIC','41089','Retainer',225,78);
 insert into products values ('ACI','41001','Size 1 Widget',55,277);
 insert into products values ('IMM','775C','500-LB Brace',1425,5);
 insert into products values ('ACI','4100Z','Widget Installer',2500,28);
 insert into products values ('QSA','XK48A','Reducer',177,37);
 insert into products values ('ACI','41002','Size 2 Widget',76,167);
 insert into products values ('REI','2A44R','Right Hinge',4500,12);
 insert into products values ('IMM','773C','300-LB Brace',975,28);
 insert into products values ('ACI','4100X','Widget Adjuster',25,37);
 insert into products values ('FEA','114','Moter Mount',243,15);
 insert into products values ('IMM','887X','Brace Retainer',475,32);
 insert into products values ('REI','2A44G','Hinge Pin',350,14);

 select * from products
 insert into salesreps values(106,'Sam Clark',52,11,'VP Sales','2006-06-14',null,275000,299912);
insert into salesreps values(109,'Mary Jones',31,11,'Sales Rep','2007-10-12',106,300000,392725);
insert into salesreps values(104,'Bob Smith',33,12,'Sales Rep','2005-05-19',106,200000,142594);
insert into salesreps values(108,'Larry Flinch',62,21,'Sales Rep','2007-10-12',106,350000,361865);
insert into salesreps values(105,'Bill Adams',37,13,'Sales Rep','2006-02-12',104,350000,367911);
insert into salesreps values(101,'Dan Roberts',45,12,'Sales Rep','2004-10-20',104,300000,305673);
insert into salesreps values(103,'Paul Cruz',29,12,'Sales Rep','2005-03-01',104,275000,286775);
insert into salesreps values(102,'Sue Smith',48,21,'Sales Rep','2004-12-10',108,350000,474050);
insert into salesreps values(107,'Nancy Angelli',49,22,'Sales rep','2006-11-14',108,300000,186042);
insert into salesreps values(110,'Tom Snyder',41,null,'Sales rep','2008-01-13',101,null,75985);

select * from salesreps
insert into customers values(2111,'JCP	Inc','103',500000);
insert into customers values(2102,'First Corp.','101',65000);
insert into customers values(2103,'Acme Mfg.','105',50000);
insert into customers values(2123,'Carter & Sons','102',40000);

insert into customers values(2107,'Ace International','110',35000);
insert into customers values(2115,'Smithson Corp','101',20000);
insert into customers values(2101,'Jones Mfg.','106',65000);
insert into customers values(2112,'Zetacorp','108',50000);
insert into customers values(2121,'Qma Assoc.','103',45000);
insert into customers values(2114,'Orion Corp.','102',20000);
insert into customers values(2124,'Peter Brothers','107',40000);
insert into customers values(2108,'Holm & Laudis','109',55000);
insert into customers values(2117,'J.P.Sinclair','106',35000);
insert into customers values(2122,'Three-Way Lines','105',30000);
insert into customers values(2120,'Rico Enterprise','102',50000);
insert into customers values(2106,'Fred Lewis Corp.','102',65000);
insert into customers values(2119,'Solomon Inc.','109',25000);
insert into customers values(2118,'Midwest Systems','108',60000);
insert into customers values(2113,'Ian & Schmidt','104',20000);
insert into customers values(2109,'Chen Associates','103',25000);
insert into customers values(2105,'AAA Investments','101',45000);


select * from customers
insert into orders values ('112961','2007-12-17',2117,'106','REI','2A44L',7,31500);
insert into orders values ('113012','2008-01-11',2111,'105','ACI','41003',35,3745);
insert into orders values ('112989','2008-01-03',2101,'106','FEA','114',6,1458);
insert into orders values ('113051','2008-02-10',2118,'108','QSA','Xk47',2,1420);
insert into orders values ('112968','2007-10-12',2102,'101','ACI','41004',34,3978);
insert into orders values ('113036','2008-01-30',2107,'110','ACI','41002',9,22500);
insert into orders values ('113045','2008-02-02',2112,'108','REI','2A44R',10,45000);
insert into orders values ('112963','2007-12-17',2103,'105','ACI','41004',28,3276);
insert into orders values ('113013','2008-01-14',2118,'108','BIC','41003',1,652);
insert into orders values ('113058','2008-02-23',2108,'109','FEA','112',10,1480);
insert into orders values ('112997','2008-01-08',2124,'107','BIC','41003',1,652);
insert into orders values ('112983','2007-12-27',2103,'105','ACI','41004',6,702);
insert into orders values ('113024','2008-01-20',2114,'108','QSA','XK47',20,7100);
insert into orders values ('113062','2008-02-24',2124,'107','FEA','114',10,2430);
insert into orders values ('112979','2007-10-12',2114,'102','ACI','4100Z',6,15000);
insert into orders values ('113027','2008-01-22',2103,'105','ACI','4100Z',54,4104);
insert into orders values ('113007','2008-01-08',2112,'108','IMM','773C',3,2925);
insert into orders values ('113069','2008-03-02',2109,'107','IMM','775C',22,31350);
insert into orders values ('113034','2008-01-29',2107,'110','REI','2A45C',8,632);
insert into orders values ('112992','2007-11-04',2118,'108','ACI','41002',10,760);
insert into orders values ('112975','2007-10-12',2111,'103','REI','2A44G',6,2100);
insert into orders values ('113055','2008-02-15',2108,'101','ACI','4100X',6,150);
insert into orders values ('113048','2008-02-10',2120,'102','IMM','779C',2,3750);
insert into orders values ('112993','2007-01-04',2106,'102','REI','2A45C',24,1896);
insert into orders values ('113065','2008-02-27',2106,'102','QSA','XK47',6,2130);
insert into orders values ('113003','2008-01-25',2108,'109','IMM','779C',3,5625);
insert into orders values ('113049','2008-02-10',2118,'108','QSA','XK47',2,776);
insert into orders values ('112987','2007-12-31',2103,'105','ACI','4100Y',11,27500);
insert into orders values ('113057','2008-02-18',2111,'103','ACI','4100X',24,600);
insert into orders values ('113042','2008-02-02',2113,'101','REI','2A44R',5,22500);

select * from orders

--PRACTICAL NO 3--
--Q1--
SELECT office,target,sales,(sales-target)
AS actual_sales
FROM OFFICES;
--Q2--
select distinct name
from customers,salesreps
where cust_rep=empl_num

--q3--
select name,quota,manager
from salesreps;

--q4--
select mfr_id,product_id,(qty_on_hand*price)
as value
from products;

--q5--
select cust_num,credit_limit
from customers;

--q6--
select name,quota,sales
from salesreps
where empl_num=107;

--q7--
select mfr_id,product_id,qty_on_hand
from products
where qty_on_hand between 26 and 199 ;

--q8--
select office
from offices
where sales>target;

--q9--
select office
from offices
where mgr!=108;

--q10--
select order_num,rep
from orders
where rep in (107,109,101,103);

--q11--
select company,credit_limit
from customers
where company='Smithson Corp';

--q12--
select office,city,region,target,sales
from offices
order by region,city,target desc;

--q13--
select name 
from salesreps
where rep_office is not null;

--q14--
select office,city,(sales-target)as performance
from offices
order by performance desc;


--PRACTICAL NO 4 QUERIES--
--q1--
select AVG(quota)as average_quota,
AVG (sales) as average_sales
from salesreps;

--q2--
select AVG (Sales*100/quota)as performance
from salesreps;

--q3--
select SUM(amount)as total
from orders,salesreps
where rep=empl_num and name='Bill Adams';

--q4--
select AVG(Price)as 'Avg_Price of product'
from products
where mfr_id='ACI';

--q5--
select cust,AVG(qty) as 'Avg_size'
from orders
where cust=2103
group by cust;

--q6--
select MIN(quota)as Min_quota,MAX(quota)as Max_quota
from salesreps;

--q7--
select COUNT(*)as Total_Customer
from customers;

--q8--
select COUNT(*)
from salesreps
where quota<sales;

--q9--
select rep_office,MIN(quota)as 'Minimum Quota',MAX(quota)as 'Maximum quota'
from salesreps
group by rep_office;

--q10--
select rep_office,count(*)as Count
from salesreps
group by rep_office;

--q11--
select cust,rep,SUM(amount)as 'total order amount'
from orders
group by cust,rep;

--q12--
select cust,rep,SUM(amount)as 'total'
from orders
group by cust,rep
order by cust,rep;

--q13--
select rep,SUM(amount)as total
from orders
group by rep;

--q14--
select rep,AVG(amount)as average_amount 
from orders 
group by rep
having SUM(amount)>'30000';

--q15--
select rep_office,SUM (quota) as 'SUM_OF_QUOTA',
SUM (sales) as 'SUM_OF_SALES'
from salesreps
group by rep_office
having count(*)>1;

