
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
CREATE TABLE EMPLOYEE
(EmpID NUMBER(8) NOT NULL,
LastName VARCHAR2(30),
FirstName VARCHAR2(30),
StartedOn DATE, 
Wage DECIMAL(5,2), 
StoreID NUMBER(4),
PRIMARY KEY (EmpID),
FOREIGN KEY (StoreID) REFERENCES LOCATION (StoreID));

DROP TABLE LOCATION CASCADE CONSTRAINTS;
CREATE TABLE LOCATION 
(StoreID NUMBER(8) NOT NULL,
StreetNumber VARCHAR2(30), 
StreetName VARCHAR2(30), 
City VARCHAR(30), 
State CHARACTER(2),
Zip CHARACTER(5),
Units CHARACTER(4),
MonthlyRevenue DECIMAL(8,2),
PRIMARY KEY (StoreID));

DROP TABLE ORDERN CASCADE CONSTRAINTS;
CREATE TABLE ORDERN
(OrderID NUMBER(6) NOT NULL,
CustID NUMBER(10) NOT NULL,
UntiID VARCHAR(7) NOT NULL,
DateTime DATE, 
PaymentType CHARACTER(3),
PRIMARY KEY (OrderID),
FOREIGN KEY (CustID) REFERENCES CUSTOMER (CustID));

DROP TABLE UNIT CASCADE CONSTRAINTS;
CREATE TABLE UNIT
(UnitID VARCHAR(7) NOT NULL,
StoreID NUMBER(8) NOT NULL,
Width NUMERIC(3,0),
Height NUMERIC(3,0),
Rate NUMERIC(5,2),
Status CHARACTER(3),
Area NUMERIC(4,0),
PRIMARY KEY (UnitID),
FOREIGN KEY (StoreID) REFERENCES LOCATION (StoreID));

DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
CREATE TABLE CUSTOMER 
(CustID NUMBER(10) NOT NULL,
LastName VARCHAR2(30),
StreetNumber VARCHAR2(30),
StreetName VARCHAR2(30),
City VARCHAR(30), 
State CHARACTER(2),
Zip CHARACTER(5),
Phone CHARACTER(10),
Email VARCHAR2(40),
PRIMARY KEY (CustID));


DROP TABLE MERCHANDISE CASCADE CONSTRAINTS;
CREATE TABLE MERCHANDISE
(ProductID VARCHAR2(9),
ProductName VARCHAR2(50),
Quantity NUMERIC(5,0),
Cost NUMERIC(4,2),
Price  NUMERIC(5,2),
PRIMARY KEY (ProductID));
	

/* Queries


INSERT INTO EMPLOYEE VALUES (23145678, Payne, Max, 3/8/13, 9.24, 2255);
INSERT INTO EMPLOYEE VALUES (24234122, Gonzalez, Rene, 3/14/13,  9.24, 2255);
INSERT INTO EMPLOYEE VALUES (23123453, Chao, David, 3/26/13,  9.24,  2133);
INSERT INTO EMPLOYEE VALUES (23145123, Jairo, Alexander, 7/24/13, 14.00, 2133);
INSERT INTO EMPLOYEE VALUES (24212313, Gonzalez, Steven, 6/12/13,  14.00, 2133);
INSERT INTO EMPLOYEE VALUES (23198786, White, Cindy, 6/26/12,  27.00,  2222);
INSERT INTO EMPLOYEE VALUES (19188617, Lei, Daniel, 6/12/13,  14.00, 2133);
INSERT INTO EMPLOYEE VALUES (12388753, Morgan, Jackie, 6/26/12,  27.00,  2222);
INSERT INTO EMPLOYEE VALUES (18821377, Owen, Ronald, 1/23/12,  17.54, 2133);
INSERT INTO EMPLOYEE VALUES (12334121, Rodriguez, Derrick, 9/2/12,  35.00,  2111);


INSERT INTO LOCATION VALUES (2255, 3045, Taraval st., San Francisco,  CA,  94123, 120, 90345.00);
INSERT INTO LOCATION VALUES (2133, 2143, Ocean ave., San Francisco,  CA,  94132, 200, 149000.00);
INSERT INTO LOCATION VALUES (2222, 125, Cedro ave., San Francisco,  CA,  94123, 90, 74000.00);
INSERT INTO LOCATION VALUES (2111, 412, Gonzalez Dr., Los Angeles,  CA,  92321, 259, 190000.00);


INSERT INTO ORDERN VALUES (543122, 2319562538, 2312323, 4/24/14, Debit);
INSERT INTO ORDERN VALUES (412332, 9123478283, 1230184, 4/24/14, Cash);
INSERT INTO ORDERN VALUES (276865, 1335673574, 0812947, 4/28/14, Cash);
INSERT INTO ORDERN VALUES (174123, 1335673574, 1294823, 3/23/14, Credit);
INSERT INTO ORDERN VALUES (192471, 9128482199, 2149821, 10/24/14, Debit);
INSERT INTO ORDERN VALUES (822381, 9134812326, 1294124, 8/01/14, Credit);
INSERT INTO ORDERN VALUES (165743, 2314515132, 9081248, 1/06/14, Credit);


INSERT INTO CUSTOMER VALUES (1335673574, Souza, Alex, 313,  Ocean st.,  San Francisco, CA, 94123, 4155654323, alexsouza@gmail.com);
INSERT INTO CUSTOMER VALUES (9128482199, Chao, Zhen, 2452,  Turk st.,  San Francisco, CA, 94123, 4153234232, zhenchao@gmail.com);
INSERT INTO CUSTOMER VALUES (9134812326, Cameron, Selena, 124,  Broadway ave.,  Los Angeles, CA, 94123, 4152131432, scameron@gmail.com);
INSERT INTO CUSTOMER VALUES (2314515132, Gerard, David, 234,  San Lorenzo st.,  Fremont, CA, 94143, 4153245324, d.gerard@gmail.com);
INSERT INTO CUSTOMER VALUES (9123478283, Wong, Elaine, 1155,  Gonzalez dr.,  San Francisco, CA, 93212, 4151232131, elaineww.w@gmail.com);
INSERT INTO CUSTOMER VALUES (2319562538, Maria, Debra, 325,  Lombard st.,  San Francisco, CA, 95230, 4151232341, mariaaas@gmail.com);


*/
