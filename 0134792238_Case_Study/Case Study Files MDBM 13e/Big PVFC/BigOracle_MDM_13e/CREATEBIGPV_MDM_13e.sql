/* script name: CREATEBIGPV_MDM_13E.SQL                  */
/* purpose:     Builds Oracle tables for Big PVFCMDBM13e */
/* date:        10 Jan 2018                              */
/* updated:                                              */
/*                                                       */
/* comment:  These tables have the same names as the     */
/*           Book PVFC database, so if you run these     */
/*           script files after you have created the     */
/*           Book database files, you will wipe out      */
/*           the data in the earlier database            */
/*                                                       */
/* comment:  The Photo column in the PRODUCT table       */
/*           is not included in the Oracle version of    */
/*           this database                               */
/*                                                       */
/* comment:  Table and column names are defined in       */
/*           U/L case without embedded underscores.      */
/*           They will be displayed by Oracle, however,  */
/*           in ALL CAPS; use an alias to override       */
/*           the ALL CAPS display.                       */
/*                                                       */
/*                                                       */

/*     set up session settings                           */

SET LINESIZE 120
SET PAGESIZE 80

/* Drop all tables before creating tables                */
DROP TABLE Supplies_T 		        CASCADE CONSTRAINTS ;
DROP TABLE Uses_T 		            CASCADE CONSTRAINTS ;
DROP TABLE RawMaterial_T 	        CASCADE CONSTRAINTS ;
DROP TABLE Vendor_T 		        CASCADE CONSTRAINTS ;
DROP TABLE Shipped_T              	CASCADE CONSTRAINTS ;
DROP TABLE PaymentType_T          	CASCADE CONSTRAINTS ;
DROP TABLE Payment_T              	CASCADE CONSTRAINTS ;
DROP TABLE OrderLine_T 	          	CASCADE CONSTRAINTS ;
DROP TABLE Order_T 		            CASCADE CONSTRAINTS ;
DROP TABLE CustomerShipAddress_T  	CASCADE CONSTRAINTS ;
DROP TABLE ProducedIn_T           	CASCADE CONSTRAINTS ;
DROP TABLE Product_T 		        CASCADE CONSTRAINTS ;
DROP TABLE ProductLine_T 	        CASCADE CONSTRAINTS ;
DROP TABLE WorksIn_T 		        CASCADE CONSTRAINTS ;
DROP TABLE WorkCenter_T 	        CASCADE CONSTRAINTS ;
DROP TABLE EmployeeSkills_T 	    CASCADE CONSTRAINTS ;
DROP TABLE Employee_T 		        CASCADE CONSTRAINTS ;
DROP TABLE Skill_T 		            CASCADE CONSTRAINTS ;
DROP TABLE Salesperson_T 	        CASCADE CONSTRAINTS ;
DROP TABLE DoesBusinessIn_T 	    CASCADE CONSTRAINTS ;
DROP TABLE Territory_T 		        CASCADE CONSTRAINTS ;
DROP TABLE Customer_T 		        CASCADE CONSTRAINTS ;



/* Create all PVFC Big Database Tables (23)              */

CREATE TABLE Customer_T
	(CustomerID         NUMBER(4)          NOT NULL,
	 CustomerName       VARCHAR(25)    ,
	 CustomerAddress    VARCHAR(30)    ,
         CustomerCity       VARCHAR(20)    ,              
         CustomerState      CHAR(2)        ,
         CustomerPostalCode VARCHAR(10)    ,
CONSTRAINT Customer_PK PRIMARY KEY (CustomerID));



CREATE TABLE Territory_T
	(TerritoryID        NUMBER(4)         NOT NULL,
         TerritoryName      VARCHAR(50)    ,
CONSTRAINT Territory_PK PRIMARY KEY (TerritoryID));



CREATE TABLE DoesBusinessIn_T
	(CustomerID         NUMBER(4)           NOT NULL,
         TerritoryID        NUMBER(4)           NOT NULL,
CONSTRAINT DoesBusinessIn_PK PRIMARY KEY (CustomerID, TerritoryID),
CONSTRAINT DoesBusinessIn_FK1 FOREIGN KEY (CustomerID) 
	REFERENCES Customer_T(CustomerID),
CONSTRAINT DoesBusinessIn_FK2 FOREIGN KEY (TerritoryID) 
	REFERENCES Territory_T(TerritoryID));


CREATE TABLE Salesperson_T
	(SalespersonID        NUMBER(4)          NOT NULL,              
   SalespersonName       VARCHAR(25)    , /* Fixed */
   SalespersonTelephone VARCHAR(50)    ,
   SalespersonFax       VARCHAR(50)    ,
	 SalespersonAddress   VARCHAR(30)    ,
	 SalespersonCity      VARCHAR(20)    ,
	 SalespersonState     CHAR(2)        ,
	 SalespersonZip       VARCHAR(20)    ,
         SalesTerritoryID     NUMBER(4)      ,
CONSTRAINT Salesperson_PK PRIMARY KEY (SalespersonID),
CONSTRAINT Salesperson_FK1 FOREIGN KEY (SalesTerritoryID) /*Fixed*/
	REFERENCES Territory_T(TerritoryID));


CREATE TABLE Skill_T
	(SkillID            VARCHAR(12)    NOT NULL,
	 SkillDescription   VARCHAR(30)    ,              
CONSTRAINT Skill_PK PRIMARY KEY (SkillID));



CREATE TABLE Employee_T
	(EmployeeID         VARCHAR(10)    NOT NULL,
         EmployeeName       VARCHAR(25)    ,
         EmployeeAddress    VARCHAR(30)    ,
         EmployeeCity       VARCHAR(20)    ,
	 EmployeeState      CHAR(2)        ,
         EmployeeZip        VARCHAR(10)    ,
	 EmployeeBirthDate  DATE           ,
         EmployeeDateHired  DATE           ,
	 EmployeeSupervisor VARCHAR(10)    ,
CONSTRAINT Employee_PK PRIMARY KEY (EmployeeID));



CREATE TABLE EmployeeSkills_T
	(EmployeeID         VARCHAR(10)    NOT NULL,
         SkillID            VARCHAR(12)    NOT NULL,
	 QualifyDate 	    DATE	           ,
CONSTRAINT EmployeeSkills_PK PRIMARY KEY (EmployeeID, SkillID),
CONSTRAINT EmployeeSkills_FK1 FOREIGN KEY (EmployeeID) 
	REFERENCES Employee_T(EmployeeID),
CONSTRAINT EmployeeSkills_FK2 FOREIGN KEY (SkillID) 
	REFERENCES Skill_T(SkillID));


CREATE TABLE WorkCenter_T
	(WorkCenterID       VARCHAR(12)    NOT NULL,
	 WorkCenterLocation  VARCHAR(30)           ,
CONSTRAINT WorkCenter_PK PRIMARY KEY (WorkCenterID));


CREATE TABLE WorksIn_T
	(EmployeeID          VARCHAR(10)    NOT NULL,
         WorkCenterID        VARCHAR(12)    NOT NULL,
CONSTRAINT WorksIn_PK PRIMARY KEY (EmployeeID, WorkCenterID),
CONSTRAINT WorksIn_FK1 FOREIGN KEY (EmployeeID) 
	REFERENCES Employee_T(EmployeeID),
CONSTRAINT WorksIn_FK2 FOREIGN KEY (WorkCenterID) 
	REFERENCES WorkCenter_T(WorkCenterID));


CREATE TABLE ProductLine_T
	(ProductLineID     NUMBER(4)         NOT NULL,
	ProductLineName    VARCHAR(50)               ,
CONSTRAINT ProductLine_PK PRIMARY KEY (ProductLineID));


CREATE TABLE Product_T
	(ProductID            NUMBER(4)         NOT NULL,
         ProductLineID        NUMBER(4)      ,
         ProductDescription   VARCHAR(50)    ,
         ProductFinish        VARCHAR(20)    ,
         ProductStandardPrice NUMBER(6,2)    ,
	 ProductOnHand	      NUMBER(6)      ,
CONSTRAINT Product_PK PRIMARY KEY (ProductID),
CONSTRAINT Product_FK1 FOREIGN KEY (ProductLineID) 
	REFERENCES ProductLine_T(ProductLineID));


CREATE TABLE ProducedIn_T
	(ProductID	  NUMBER(4)	 NOT NULL,
         WorkCenterID     VARCHAR(12)    NOT NULL,
CONSTRAINT ProducedInPK PRIMARY KEY (ProductID, WorkCenterID),
CONSTRAINT ProducedInFK1 FOREIGN KEY (ProductID) 
	REFERENCES Product_T(ProductID),
CONSTRAINT ProducedInFK2 FOREIGN KEY (WorkCenterID) 
	REFERENCES WorkCenter_T(WorkCenterID));

CREATE TABLE CustomerShipAddress_T
	(ShipAddressID	NUMBER(4)	NOT NULL,
	 CustomerID	NUMBER(4)	NOT NULL,
	 TerritoryID	NUMBER(4)	NOT NULL,
	 ShipAddress	VARCHAR(30)	,
	 ShipCity	VARCHAR(20)	,
	 ShipState	CHAR(2)     	,
	 ShipZip	VARCHAR(10)	,
	 ShipDirections	VARCHAR(100)	,
CONSTRAINT CSA_PK PRIMARY KEY (ShipAddressID),
CONSTRAINT CSA_FK1 FOREIGN KEY (CustomerID)
	REFERENCES Customer_T(CustomerID),
CONSTRAINT CSA_FK2 FOREIGN KEY (TerritoryID)
	REFERENCES Territory_T(TerritoryID));


CREATE TABLE Order_T
	(OrderID            NUMBER(5)        NOT NULL,
	 CustomerID         NUMBER(4)   ,
   OrderDate          DATE        ,
	 FulfillmentDate    DATE	,
	 SalespersonID	    NUMBER(4)	,
	 ShipAdrsID	    NUMBER(4)	,
CONSTRAINT Order_PK PRIMARY KEY (OrderID),
CONSTRAINT Order_FK1 FOREIGN KEY (CustomerID) 
	REFERENCES Customer_T(CustomerID),
CONSTRAINT Order_FK2 FOREIGN KEY (SalespersonID)
	REFERENCES Salesperson_T(SalespersonID),
CONSTRAINT Order_FK3 FOREIGN KEY (ShipAdrsID)
	REFERENCES CustomerShipAddress_T(ShipAddressID));


CREATE TABLE OrderLine_T
	(OrderLineID	    NUMBER(4)	     NOT NULL,
	 OrderID            NUMBER(5)        NOT NULL,
         ProductID          NUMBER(4)        NOT NULL,
         OrderedQuantity    NUMBER(10)         ,
CONSTRAINT OrderLine_PK PRIMARY KEY (OrderLineID),
CONSTRAINT OrderLine_FK1 FOREIGN KEY (OrderID) 
	REFERENCES Order_T(OrderID),
CONSTRAINT OrderLine_FK2 FOREIGN KEY (ProductID) 
	REFERENCES Product_T(ProductID));

CREATE TABLE PaymentType_T
  (PaymentTypeID  VARCHAR(50)    NOT NULL,
  TypeDescription VARCHAR(50)   NOT NULL,
  CONSTRAINT PaymentType_PK  PRIMARY KEY (PaymentTypeID));
  
CREATE TABLE Payment_T
  (PaymentID      NUMBER(5)    NOT NULL,
   OrderID        NUMBER(5)    NOT NULL,
   PaymentTypeID  VARCHAR(50)  NOT NULL,
   PaymentDate    DATE                 ,
   PaymentAmount  NUMBER(6,2)          ,
   PaymentComment VARCHAR(255)         , 
  CONSTRAINT  Payment_PK  PRIMARY KEY (PaymentID),
  CONSTRAINT  Payment_FK1 FOREIGN KEY (OrderID)
    REFERENCES Order_T(OrderID),
  CONSTRAINT  Payment_FK2 FOREIGN KEY (PaymentTypeID)
    REFERENCES PaymentType_T(PaymentTypeID));
    
CREATE TABLE Shipped_T
  (OrderLineId  NUMBER(4) NOT NULL,
   ShippedQuantity     NUMBER(10) NOT NULL,
   ShippedDate         DATE,
  CONSTRAINT Shipped_PK PRIMARY KEY (OrderLineId),
  CONSTRAINT Shipped_FK1  FOREIGN KEY (OrderLineId)
    REFERENCES OrderLine_T(OrderLineID));


CREATE TABLE Vendor_T
	(VendorID           NUMBER(4)         NOT NULL,
         VendorName         VARCHAR(25)    ,
         VendorAddress      VARCHAR(30)    ,
         VendorCity         VARCHAR(20)    ,
         VendorState        CHAR(2)        ,
	 VendorZipcode      VARCHAR(50)    ,
	 VendorPhone        VARCHAR(12)    ,
	 VendorFax          VARCHAR(12)    ,              
	 VendorContact      VARCHAR(50)    ,
         VendorTaxIdNumber  VARCHAR(50)    ,
CONSTRAINT Vendor_PK PRIMARY KEY (VendorID));




CREATE TABLE RawMaterial_T
	(MaterialID             VARCHAR(12)    NOT NULL,
         MaterialName           VARCHAR(30) ,
	 Thickness		VARCHAR(50) ,
	 Width			VARCHAR(50) ,
	 MatSize			VARCHAR(50) ,  /*Fixed*/
	 Material		VARCHAR(15) ,
         MaterialStandardPrice  NUMBER(6,2) ,
         UnitOfMeasure          VARCHAR(15) ,
	 MaterialType		VARCHAR(50),
CONSTRAINT RawMaterial_PK PRIMARY KEY (MaterialID)); /*Fixed*/


CREATE TABLE Uses_T
        (MaterialID         VARCHAR(12)    NOT NULL,
         ProductID          NUMBER(4)      NOT NULL,
         QuantityRequired   NUMBER(5)              ,
CONSTRAINT Uses_PK PRIMARY KEY (ProductID, MaterialID),  /*Fixed*/
CONSTRAINT Uses_FK1 FOREIGN KEY (ProductID) 
	REFERENCES Product_T(ProductID),
CONSTRAINT Uses_FK2 FOREIGN KEY (MaterialID) 
	REFERENCES RawMaterial_T(MaterialID));


CREATE TABLE Supplies_T
	(VendorID           NUMBER(4)         NOT NULL,
         MaterialID         VARCHAR(12)       NOT NULL,
         SupplyUnitPrice    NUMBER(6,2)   ,              
CONSTRAINT Supplies_PK PRIMARY KEY (VendorID, MaterialID),
CONSTRAINT Supplies_FK1 FOREIGN KEY (MaterialID) 
	REFERENCES RawMaterial_T(MaterialID),
CONSTRAINT Supplies_FK2 FOREIGN KEY (VendorID) 
	REFERENCES Vendor_T(VendorID));


/* Run Oracle specific command to display table structure in DB    */

describe Supplies_T;
describe Uses_T;
describe RawMaterial_T;
describe Vendor_T;
describe PaymentType_T;
describe Payment_T;
describe Shipped_T;
describe OrderLine_T;
describe Order_T;
describe CustomerShipAddress_T;
describe ProducedIn_T;
describe Product_T;
describe ProductLine_T;
describe WorksIn_T;
describe WorkCenter_T;
describe EmployeeSkills_T;
describe Employee_T;
describe Skill_T;
describe Salesperson_T;
describe DoesBusinessIn_T;
describe Territory_T;
describe Customer_T;

/* show constraints for each table */



COMMIT;