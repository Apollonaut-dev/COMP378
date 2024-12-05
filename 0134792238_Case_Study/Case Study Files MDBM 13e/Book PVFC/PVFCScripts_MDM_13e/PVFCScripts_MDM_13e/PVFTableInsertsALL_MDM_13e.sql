---------------------------------------------------------
-- Note: There are no insert statements for tables:
-- RawMaterial_T
-- Vendor_T
-- Supplies_T
-- ProducedIn_T
-- Uses_T
---------------------------------------------------------

---------------------------------------------------------
-- Group 1 Table Inserts
---------------------------------------------------------
-- Table: Customer_T
INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Contemporary Casuals', '1355 S Hines Blvd', 'Gainesville', 'FL', '326012871');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Value Furniture', '15145 S.W. 17th St.', 'Plano', 'TX', '750947743');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Home Furnishings', '1900 Allard Ave.', 'Albany', 'NY', '122091125');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '070083188');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '942064056');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '805144432');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Period Furniture', '394 Rainbow Dr.', 'Seattle', 'WA', '979545589');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('California Classics', '816 Peach Rd.', 'Santa Clara', 'CA', '969157754');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('M and H Casual Furniture', '3709 First Street', 'Clearwater', 'FL', '346202314');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Seminole Interiors', '2400 Rocky Point Dr.', 'Seminole', 'FL', '346464423');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('American Euro Lifestyles', '2424 Missouri Ave N.', 'Prospect Park', 'NJ', '075085621');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Battle Creek Furniture', '345 Capitol Ave. SW', 'Battle Creek', 'MI', '490153401');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Heritage Furnishings', '66789 College Ave.', 'Carlisle', 'PA', '170138834');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Kaneohe Homes', '112 Kiowai St.', 'Kaneohe', 'HI', '967442537');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Mountain Scenes', '4132 Main Street', 'Ogden', 'UT', '844034432');


-- Table: Employee_T
INSERT INTO [Employee_T]([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeCity], [EmployeeState], [EmployeeZipCode], [EmployeeSupervisor], [EmployeeDateHired]) 
	VALUES('454-56-768', 'Robert Lewis', '17834 Deerfield Ln', 'Nashville', 'TN', NULL, NULL, '2004-01-01 00:00:00');
INSERT INTO [Employee_T]([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeCity], [EmployeeState], [EmployeeZipCode], [EmployeeSupervisor], [EmployeeDateHired]) 
	VALUES('123-44-345', 'Jim Jason', '2134 Hilltop Rd', NULL, 'TN', NULL, '454-56-768', '2004-06-12 00:00:00');



-- Table: ProductLine_T
INSERT INTO [ProductLine_T]([ProductLineName]) 
	VALUES('Cherry Tree');

INSERT INTO [ProductLine_T]([ProductLineName]) 
	VALUES('Scandinavia');

INSERT INTO [ProductLine_T]([ProductLineName]) 
	VALUES('Country Look');



-- Table: RawMaterial_T - No Rows


-- Table: Skill_T
INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('BS12', '12in Band Saw');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('QC1', 'Quality Control');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('RT1', 'Router');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('SO1', 'Sander-Orbital');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('SB1', 'Sander-Belt');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('TS10', '10in Table Saw');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('TS12', '12in Table Saw');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('UC1', 'Upholstery Cutter');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('US1', 'Upholstery Sewer');

INSERT INTO [SkillT]([SkillID], [SkillDescription]) 
	VALUES('UT1', 'Upholstery Tacker');



-- Table: Territory_T
INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('SouthEast');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('SouthWest');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('NorthEast');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('NorthWest');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('Central');



-- Table: Vendor_T - No Rows


-- Table: WorkCenter_T
INSERT INTO [WorkCenter_T]([WorkCenterID], [WorkCenterLocation]) 
	VALUES('SM1', 'Main Saw Mill');

INSERT INTO [WorkCenter_T]([WorkCenterID], [WorkCenterLocation]) 
	VALUES('WR1', 'Warehouse and Receiving');




---------------------------------------------------------
-- Group 2 Table Inserts
---------------------------------------------------------
-- Table: DoesBusinessIn_T
INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(1, 1);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(1, 2);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(2, 2);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(3, 3);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(4, 3);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(5, 2);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(6, 5);


-- Table: EmployeeSkills_T
INSERT INTO [EmployeeSkills_T]([EmployeeID], [SkillID]) 
	VALUES('123-44-345', 'BS12');

INSERT INTO [EmployeeSkills_T]([EmployeeID], [SkillID]) 
	VALUES('123-44-345', 'RT1');

INSERT INTO [EmployeeSkills_T]([EmployeeID], [SkillID]) 
	VALUES('454-56-768', 'BS12');



-- Table: Order_T
INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1001, '2018-10-21 00:00:00', 1);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1002, '2018-10-21 00:00:00', 8);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1003, '2018-10-22 00:00:00', 15);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1004, '2018-10-22 00:00:00', 5);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1005, '2018-10-24 00:00:00', 3);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1006, '2018-10-24 00:00:00', 2);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1007, '2018-10-27 00:00:00', 11);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1008, '2018-10-30 00:00:00', 12);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1009, '2018-11-05 00:00:00', 4);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1010, '2018-11-05 00:00:00', 1);



-- Table: Product_T
INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('End Table', 'Cherry', 175.0000, 1);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Coffe Table', 'Natural Ash', 200.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Computer Desk', 'Natural Ash', 375.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Entertainment Center', 'Natural Maple', 650.0000, 3);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Writers Desk', 'Cherry', 325.0000, 1);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('8-Drawer Desk', 'White Ash', 750.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Dining Table', 'Natural Ash', 800.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Computer Desk', 'Walnut', 250.0000, 3);



-- Table: Salesperson_T
INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Doug Henny', '8134445555', NULL, 1);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Robert Lewis', '8139264006', NULL, 2);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('William Strong', '5053821212', NULL, 3);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Julie Dawson', '4355346677', NULL, 4);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Jacob Winslow', '2238973498', NULL, 5);



-- Table: Supplies_T - No Rows


-- Table: WorksIn_T
INSERT INTO [WorksIn_T]([EmployeeID], [WorkCenterID]) 
	VALUES('123-44-345', 'SM1');




---------------------------------------------------------
-- Group 3 Table Inserts
---------------------------------------------------------
-- Table: OrderLine_T
INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1001, 1, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1001, 2, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1001, 4, 1);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1002, 3, 5);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1003, 3, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1004, 6, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1004, 8, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1005, 4, 4);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1006, 4, 1);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1006, 5, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1006, 7, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1007, 1, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1007, 2, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1008, 3, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1008, 8, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1009, 4, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1009, 7, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1010, 8, 10);


-- Table: ProducedIn_T - No Rows
-- Table: Uses - No Rows

-- END OF INSERT STATEMENTS FOR PVF TABLES
