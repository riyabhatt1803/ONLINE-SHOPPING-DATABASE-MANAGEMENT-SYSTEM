create database PRACTICAL5;
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

--practical no 5 
--Practical 5 :	Insertion and Deletion and manipulation
	
--(1) Remove Henry Jacobsen from the database
	delete from salesreps
	where name = 'Henry Jacobsen';

--(2) Remove all orders for InterCorp (customer Number 2126)
	delete from customers
	where cust_num = 2126;

--(3) Delete all orders placed before November 15,2007
	delete from orders
	where order_date < '2007-11-15';

--(4) Delete all rows for customers served by Bill Adams,Mary Jones, 
--    or Dan Roberts (employee numbers 105,109,101).
	delete from customers
	where cust_rep in (105,109,101);

--(5) Delete all salespeople hired before July 2006 who have not yet been assigned a quota
	delete from salesreps
	where hire_date < '2006-07-01' and quota is Null;

--(6) Delete the orders taken by sue Smith 
	delete from orders
	where rep in (select empl_num
					from salesreps
					where name = 'Sue Smith');

--(7) Delete customers who have not ordered since November 10,2007
	delete from customers
	where cust_num in (select cust
					from orders
					where order_date < '2007-11-10');

--(8) Raise the credit limit for Acme Manufacturing to $60,000 and reassign the company to Mary Jones (employee number 109).
	update customers
	set credit_limit = 60000, cust_rep = 109
	where company like 'Acme%';

--(9) Transfer all Salespeople from the Chicago office (number 12) to the New York (number 11) and lower their quotas by 10 percent(%).
	update salesreps
	set rep_office = 11, quota = quota*.9
	where rep_office = 12;
	
--(10) Reassign all customers served by employee number 105,106,or 107 
--     to employee number 102.
	update customers
	set cust_rep = 102
	where cust_rep in (105,106,107);

--(11) Assign a quota of $100,000  to any Salesperson who currently has no quota
	update salesreps
	set quota = 100000
	where quota is null;

--(12) Raise all quotas by 5 percent 
	update salesreps
	set quota = quota*1.05;

--(13) Raise by $5000 the credit limit of any customer who has placed an order 
--     for more than $25000.
	update customers
	set credit_limit = credit_limit+5000
	where cust_num in (select cust
						from orders
						where amount > 25000)

--(14) Reassign all customers served by salespeople to 105 whose sales are less 
--	   than 80 percent of their quota.
	update customers
	set cust_rep = 105
	where cust_rep in (select empl_num
						from salesreps
						where sales < quota*.8)

--(15) Have all salespeople who served over three dedicated customers 
--     report directly to sam Clark (employee number 106).
	update salesreps
	set manager = 106
	where 3 < (select count(*)
				from customers
				where cust_rep = empl_num)

--(16) Delete all orders
	delete from orders;

