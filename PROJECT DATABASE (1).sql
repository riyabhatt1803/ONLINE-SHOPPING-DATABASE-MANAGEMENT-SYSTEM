create database ecommerece_data;
CREATE TABLE Customer (
   custID char(9) NOT NULL,
   fname Varchar(15),
    lname Varchar(15),
    Contact Varchar(13),
    Email_id Varchar(20),
    PRIMARY KEY (custID)
);

CREATE TABLE CustomerAddress (
   custID char(9) NOT NULL,
   Address Varchar(30),
    PRIMARY KEY (custID,Address),
    FOREIGN KEY (custID) REFERENCES Customer(custID));

CREATE TABLE Category(
      catID char(9),
      catName Varchar(20),
      PRIMARY KEY (catID)
);


CREATE TABLE Items (
    itemCode Varchar(5) NOT NULL,
    Name Varchar(20),
    catID char(9),
    Stock integer,
    Brand Varchar(20),
    Discount numeric(3,1),
    Price Decimal(8,2),
    Rating numeric(2,1),
    Description Varchar(30),
    PRIMARY KEY (itemCode),
    FOREIGN KEY (catID) REFERENCES Category(catID) );


CREATE TABLE DeliveryService (
delivery_address Varchar(30),
delivery_charge numeric(5,2),
contact_no Varchar(13),
PRIMARY KEY (delivery_address)    
);


CREATE TABLE purchased(
      itemCode Varchar(5),
      custID char(9),
      Quantity integer,
         purchased_date date,
      PRIMARY KEY (  purchased_date),
      FOREIGN KEY (itemCode) REFERENCES Items(itemCode), 
      FOREIGN KEY (custID) REFERENCES Customer(custID)
	  );

CREATE TABLE Bills(
        Bill_no Varchar(5) NOT NULL,
        custID char(9),
        itemCode Varchar(5),
        delivery_address Varchar(30),
        bill_date date,
        Mode_of_Payment Varchar(15),
expected_delivery_date Date,
        PRIMARY KEY(bill_no),
        FOREIGN KEY (custID) REFERENCES customer,
		FOREIGN KEY (itemCode)REFERENCES items,
		FOREIGN KEY (delivery_address) REFERENCES DeliveryService,
		FOREIGN KEY (Bill_date) REFERENCES PURCHASED);
 
		

CREATE TABLE wishes_to_buy(
      custID char(9),
      itemCode Varchar(5),
      FOREIGN KEY (itemCode) REFERENCES Items, 
      FOREIGN KEY (custID) REFERENCES Customer );



--insertion
INSERT INTO Customer VALUES ('201801701', 'Kirtika', 'Singhal',  '903265479', 'id1@gmail.com');
INSERT INTO Customer VALUES ('201801702', 'Ishita', 'Das', '903251478', 'id2@gmail.com');
INSERT INTO Customer VALUES ('201801703', 'Mayank', 'Pathela', '903253771','id3@gmail.com');
INSERT INTO Customer VALUES ('201801704', 'Mahima', 'Arora', '9032547103', 'md@gmail.com');
INSERT INTO Customer VALUES ('201801705', 'Rachana', 'Soma', '9433251897', 'rs@gmail.com');
INSERT INTO Customer VALUES ('201801706', 'Pritha', 'Upadhyay', '9433251890', 'pu@gmail.com');
INSERT INTO Customer VALUES ('201801707', 'Vaaibhavi', 'Singh', '9433251812', 'vs@gmail.com');
INSERT INTO Customer VALUES ('201801708', 'Sandhya', 'Yadav', '9433251813', 'sy@gmail.com');
INSERT INTO Customer VALUES ('201801709', 'Monika', 'Phadnis', '9433251814', 'mk@gmail.com');
INSERT INTO Customer VALUES ('201801710', 'Parul', 'Soni', '9433251815', 'psoni@gmail.com');
INSERT INTO Customer VALUES ('201801711', 'Ajay', 'Guru', '9433251816', 'ag@gmail.com');
INSERT INTO Customer VALUES ('201801712', 'Mohak', 'Khare', '9433251817', 'mk@gmail.com');
INSERT INTO Customer VALUES ('201801713', 'Rohit', 'Sharma', '9433251818', 'rsharma@gmail.com');
INSERT INTO Customer VALUES ('201801714', 'Aashutosh', 'Rathi', '9433251819', 'ar@gmail.com');
INSERT INTO Customer VALUES ('201801715', 'Rahul', 'Singh', '9433251820', 'rsingh@gmail.com');
INSERT INTO Customer VALUES ('201801716', 'Anand', 'Menon', '9433251821', 'am@gmail.com');
INSERT INTO Customer VALUES ('201801717', 'Shruti', 'Rao', '9433251822', 'srao@gmail.com');
INSERT INTO Customer VALUES ('201801718', 'Pooja', 'Gurjar', '9433251823', 'pooja1@gmail.com');
INSERT INTO Customer VALUES ('201801719', 'Raju', 'Rastogi', '9433251824', 'rr@gmail.com');
INSERT INTO Customer VALUES ('201801720', 'Surabhi', 'Ramu', '9433251825', 'ramu@gmail.com');
INSERT INTO Customer VALUES ('201801721', 'Roshni', 'Ram', '9433251826', 'rram@gmail.com');
INSERT INTO Customer VALUES ('201801722', 'Sanjana', 'Dutta', '9433251827', 'sdutta@gmail.com');
INSERT INTO Customer VALUES ('201801723', 'Salman', 'Khan', '9433251830', 'blackbuck@gmail.com');
INSERT INTO Customer VALUES ('201801724', 'Shalini', 'Singhania', '9433251828', 'shalini@gmail.com');
INSERT INTO Customer VALUES ('201801725', 'Pratiti', 'Jain', '9433251829', 'pjain@gmail.com');


select * from Customer

INSERT INTO CustomerAddress VALUES ('201801701', 'Meerut');
INSERT INTO CustomerAddress VALUES ('201801702', 'Kolkata');
INSERT INTO CustomerAddress VALUES ('201801702', 'Gandhinagar');
INSERT INTO CustomerAddress VALUES ('201801703', 'Varanasi');
INSERT INTO CustomerAddress VALUES ('201801704', 'Kanpur');
INSERT INTO CustomerAddress VALUES ('201801704', 'Delhi');
INSERT INTO CustomerAddress VALUES ('201801705', 'Hyderabad');
INSERT INTO CustomerAddress VALUES ('201801706', 'Meerut');
INSERT INTO CustomerAddress VALUES ('201801707', 'Lucknow');
INSERT INTO CustomerAddress VALUES ('201801707', 'Gandhinagar');
INSERT INTO CustomerAddress VALUES ('201801708', 'Varanasi');
INSERT INTO CustomerAddress VALUES ('201801709', 'Mumbai');
INSERT INTO CustomerAddress VALUES ('201801709', 'Gandhinagar');
INSERT INTO CustomerAddress VALUES ('201801710', 'Jabalpur');
INSERT INTO CustomerAddress VALUES ('201801711', 'Gwalior');
INSERT INTO CustomerAddress VALUES ('201801711', 'Delhi');
INSERT INTO CustomerAddress VALUES ('201801712', 'Jhansi');
INSERT INTO CustomerAddress VALUES ('201801713', 'Nagpur');
INSERT INTO CustomerAddress VALUES ('201801714', 'Nagpur');
INSERT INTO CustomerAddress VALUES ('201801715', 'Jhansi');
INSERT INTO CustomerAddress VALUES ('201801715', 'Ahmedabad');
INSERT INTO CustomerAddress VALUES ('201801716', 'Meerut');
INSERT INTO CustomerAddress VALUES ('201801717', 'Hyderabad');
INSERT INTO CustomerAddress VALUES ('201801717', 'Bangalore');
INSERT INTO CustomerAddress VALUES ('201801718', 'Jaipur');
INSERT INTO CustomerAddress VALUES ('201801719', 'Ahmedabad');
INSERT INTO CustomerAddress VALUES ('201801720', 'Kanpur');
INSERT INTO CustomerAddress VALUES ('201801721', 'Kolkata');
INSERT INTO CustomerAddress VALUES ('201801722', 'Mumbai');
INSERT INTO CustomerAddress VALUES ('201801723', 'Lucknow');
INSERT INTO CustomerAddress VALUES ('201801724', 'Gandhinagar');
INSERT INTO CustomerAddress VALUES ('201801725', 'Kolkata');
 
 select * from CustomerAddress

INSERT INTO Category VALUES ('SP1111111', 'Sports');
INSERT INTO Category VALUES ('DS1111111', 'Dresses');
INSERT INTO Category VALUES ('BK1111111', 'Books');
INSERT INTO Category VALUES ('KA1111111', 'Kitchen Accessories');
INSERT INTO Category VALUES ('TY1111111', 'Toys');
INSERT INTO Category VALUES ('EA1111111', 'Electronics');
INSERT INTO Category VALUES ('LU1111111', 'Luggage');


select * from Category

INSERT INTO Items VALUES('MB101','Iphone 7','EA1111111','8','apple','12.1', '48000','4.6', '5.5 inch screen gorilla glass');
INSERT INTO Items VALUES('BK101','There Were None','BK1111111','10','Penguin','0.0', '499','4.9', 'Murder Mystery');
INSERT INTO Items VALUES('TY102','Mickey mouse','TY1111111','3','hamleys','30.2', '1399','3.2', 'stuffed soft toy');
INSERT INTO Items VALUES('SP101','Football','SP1111111','6','Nike','5.8', '989','4.8', 'Limited Edition');
INSERT INTO Items VALUES('LU101','Trolley Bag','LU1111111','11','Sky Bag','6.3', '6071','4.6', '23 inches Travel Bag');
INSERT INTO Items VALUES('TY103','Minie mouse','TY1111111','2','hamleys','30.2', '1299','3.4', 'stuffed soft toy');
INSERT INTO Items VALUES('EA101', 'Laptop', 'EA1111111', '3', 'DELL' , '10.0', '75000', '4.5', 'Black Colour i5 8GB');
INSERT INTO Items VALUES('KA101','Knife','KA1111111','1','Prestige','5.0', '236','4.9', 'Stainless Steel Blade');
INSERT INTO Items VALUES('BK102','Alchemist','BK1111111','7','Rupa.Co','14.5', '399','3.8', 'fantasy fiction');
INSERT INTO Items VALUES('SP102','badminton racket','SP1111111','4','Reebok','4.8', '1299','4.6', 'firm grip good quality');
INSERT INTO Items VALUES('DS101', 'western gown', 'DS1111111', '10', 'Madame', '20.0', '10000', '4.0', 'party wear');
INSERT INTO Items VALUES('DS102', 'black dress', 'DS1111111', '5', 'Madame', '20.0', '599', '4.0', 'party wear');
INSERT INTO Items VALUES('DS103', 'deathnote tshirt', 'DS1111111', '4', 'animania', '10.0', '699', '4.2', 'round neck');
INSERT INTO Items VALUES('DS104', 'natsu tshirt', 'DS1111111', '3', 'animania', '10.0', '699', '4.1', 'round neck');
INSERT INTO Items VALUES('DS105', 'fairytale tshirt', 'DS1111111', '4', 'animania', '10.0', '699', '4.1', 'round neck');
INSERT INTO Items VALUES('BK103','Kite Runner','BK1111111','3','Rupa.Co','24.5', '499','4.8', 'fiction');
INSERT INTO Items VALUES('BK104','The godfather','BK1111111','6','Penguin','27.0', '499','4.7', 'fiction');
INSERT INTO Items VALUES('KA102','Induction','KA1111111','4','Prestige','24.0', '2999','4.5', 'long lasting');
INSERT INTO Items VALUES('KA103','Electric Kettle','KA1111111','3','Phillips','30.8', '1799','3.8', 'Stainless Steel');



select * from Items


INSERT INTO DeliveryService VALUES('Mumbai', '49', '18001234');
INSERT INTO DeliveryService VALUES('Kolkata', '79', '18002234');
INSERT INTO DeliveryService VALUES('Chennai', '49', '18003234');
INSERT INTO DeliveryService VALUES('Pune', '49', '18004234');
INSERT INTO DeliveryService VALUES('Gandhinagar', '89', '18005234');
INSERT INTO DeliveryService VALUES('Ahmedabad', '59', '18006234');
INSERT INTO DeliveryService VALUES('Delhi', '49', '18007234');
INSERT INTO DeliveryService VALUES('Jabalpur', '79', '18008234');
INSERT INTO DeliveryService VALUES('Kanpur', '59', '18009234');
INSERT INTO DeliveryService VALUES('Varanasi', '79', '18001134');
INSERT INTO DeliveryService VALUES('Lucknow', '79', '18002134');
INSERT INTO DeliveryService VALUES('Meerut', '59', '18002334');
INSERT INTO DeliveryService VALUES('Hyderabad', '29', '18002434');
INSERT INTO DeliveryService VALUES('Gwalior', '49', '18002534');
INSERT INTO DeliveryService VALUES('Jhansi', '39', '18002634');
INSERT INTO DeliveryService VALUES('Nagpur', '29', '18002734');
INSERT INTO DeliveryService VALUES('Jaipur', '49', '18002834');
INSERT INTO DeliveryService VALUES('Bangalore', '19', '18002934');

select * from DeliveryService


INSERT INTO wishes_to_buy VALUES('201801701','EA101');
INSERT INTO wishes_to_buy VALUES('201801702','MB101');
INSERT INTO wishes_to_buy VALUES('201801701','BK102');
INSERT INTO wishes_to_buy VALUES('201801703', 'SP102');
INSERT INTO wishes_to_buy VALUES('201801703', 'MB101');
INSERT INTO wishes_to_buy VALUES('201801705', 'TY103');
INSERT INTO wishes_to_buy VALUES('201801705', 'BK102');

select * from wishes_to_buy


INSERT INTO purchased VALUES('EA101', '201801705', '1','2018-03-16');
INSERT INTO purchased VALUES('BK101', '201801701', '1','2018-01-05');
INSERT INTO purchased VALUES('TY102', '201801701', '3','2018-02-02');
INSERT INTO purchased VALUES('DS103', '201801703', '1','2018-03-09');
INSERT INTO purchased VALUES('KA101', '201801703', '2','2018-03-16');
INSERT INTO purchased VALUES('DS104', '201801702', '1','2018-02-20');
INSERT INTO purchased VALUES('LU101', '201801702', '1','2018-02-20');
INSERT INTO purchased VALUES('BK104', '201801701', '1','2018-01-05');
INSERT INTO purchased VALUES('KA103', '201801706', '2','2018-04-01');
INSERT INTO purchased VALUES('LU101', '201801706', '1','2018-04-10');
INSERT INTO purchased VALUES('EA101', '201801701', '1','2018-02-15');
INSERT INTO purchased VALUES('TY102', '201801708', '3','2018-04-11');
INSERT INTO purchased VALUES('DS101', '201801708', '2','2018-04-11');
INSERT INTO purchased VALUES('BK102', '201801708', '2','2018-04-28');
INSERT INTO purchased VALUES('KA102', '201801703', '1','2018-03-16');
INSERT INTO purchased VALUES('MB101', '201801710', '1','2018-04-20');
INSERT INTO purchased VALUES('DS105', '201801704', '2','2018-01-01');
INSERT INTO purchased VALUES('DS105', '201801705', '2','2018-01-01');
INSERT INTO purchased VALUES('DS105', '201801707', '2','2018-01-05');
INSERT INTO purchased VALUES('DS101', '201801708', '2','2018-01-21');

SELECT * FROM purchased




INSERT INTO Bills VALUES('10001', '201801704','DS105', 'Kanpur', '2018-01-01', 'Credit Card','2018-01-07');
INSERT INTO Bills VALUES('10002', '201801701','BK101', 'Meerut', '2018-01-05','Debit card','2018-01-08');
INSERT INTO Bills VALUES('10002', '201801701','BK104', 'Meerut', '2018-01-05','Debit card','2018-01-08');
INSERT INTO Bills VALUES('10003', '201801701','TY102', 'Meerut', '2018-02-02','COD','2018-02-06');
INSERT INTO Bills VALUES('10004', '201801701','EA101', 'Meerut', '2018-02-15','Credit Card','2018-02-18');
INSERT INTO Bills VALUES('10005', '201801702','DS104', 'Kolkata', '2018-02-20','Debit card','2018-02-23');
INSERT INTO Bills VALUES('10005', '201801702','LU101', 'Kolkata', '2018-02-20','Debit card','2018-02-23');
INSERT INTO Bills VALUES('10006', '201801703','DS103', 'Varanasi', '2018-03-09','COD','2018-03-11');
INSERT INTO Bills VALUES('10007', '201801703','KA101', 'Varanasi', '2018-03-16','Debit Card','2018-03-19');
INSERT INTO Bills VALUES('10007', '201801703','KA102', 'Varanasi', '2018-03-16','Debit Card','2018-03-19');
INSERT INTO Bills VALUES('10008', '201801705','EA101', 'Hyderabad', '2018-03-16','COD','2018-03-19');
INSERT INTO Bills VALUES('10009', '201801706','KA103', 'Meerut', '2018-04-01','Debit card','2018-04-03');
INSERT INTO Bills VALUES('10010', '201801706','LU101', 'Meerut', '2018-04-10','Credit Card','2018-04-12');
INSERT INTO Bills VALUES('10011', '201801708','TY102', 'Varanasi', '2018-04-11','Debit Card','2018-04-13');
INSERT INTO Bills VALUES('10011', '201801708','DS101', 'Varanasi', '2018-04-11','Debit Card','2018-04-13');
INSERT INTO Bills VALUES('10012', '201801708','BK102', 'Varanasi', '2018-04-28','Credit Card','2018-05-08');
INSERT INTO Bills VALUES('10013', '201801710','MB101', 'Jabalpur', '2018-04-20','Credit Card','2018-04-30');
INSERT INTO Bills VALUES('10014', '201801705','DS105', 'Hyderabad', '2018-01-01','Credit Card','2018-01-06');
INSERT INTO Bills VALUES('10015', '201801707','DS105', 'Lucknow', '2018-01-05','Credit Card','2018-01-09');
INSERT INTO Bills VALUES('10016', '201801708','DS101', 'Varanasi', '2018-01-21','COD','2018-01-26');

SELECT * FROM Bills