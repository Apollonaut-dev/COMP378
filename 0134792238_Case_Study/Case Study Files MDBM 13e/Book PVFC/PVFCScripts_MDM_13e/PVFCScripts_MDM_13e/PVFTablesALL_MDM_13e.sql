/****** GROUP 1 Tables (Strong Entities) *****/
/****** Object:  Table [dbo].[Customer_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_T](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CustomerAddress] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerCity] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerState] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerPostalCode] [nvarchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Customer_T] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEE_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_T](
	[EmployeeID] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EmployeeName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeAddress] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeCity] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeState] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeZipCode] [nvarchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeSupervisor] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeDateHired] [datetime] NULL,
 CONSTRAINT [PK_Employee_T] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductLine_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLine_T](
	[ProductLineID] [int] IDENTITY(1,1) NOT NULL,
	[ProductLineName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_ProductLine_T] PRIMARY KEY CLUSTERED 
(
	[ProductLineID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RawMaterial_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMaterial_T](
	[MaterialID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaterialName] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UnitOfMeasure] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaterialStandardCost] [money] NULL,
 CONSTRAINT [PK_RawMaterial_T] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_T](
	[SkillID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SkillDescription] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Skill_T] PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Territory_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Territory_T](
	[TerritoryID] [int] IDENTITY(1,1) NOT NULL,
	[TerritoryName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Territory_T] PRIMARY KEY CLUSTERED 
(
	[TerritoryID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendor_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_T](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorAddress] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorCity] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorState] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorZipcode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Vendor_T] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkCenter_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkCenter_T](
	[WorkCenterID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WorkCenterLocation] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_WorkCenter_T] PRIMARY KEY CLUSTERED 
(
	[WorkCenterID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Employee_T]  WITH CHECK ADD  CONSTRAINT [FK_Employee_T_Employee_T] FOREIGN KEY([Employee_Supervisor])
REFERENCES [dbo].[Employee_T] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employee_T] CHECK CONSTRAINT [FK_Employee_T_Employee_T]

/****** GROUP 2 Tables (Dependent on Group 1 Tables) *****/
/****** Object:  Table [dbo].[DoesBusinessIn_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[DoesBusinessIn_T](
	[CustomerID] [int] NOT NULL,
	[TerritoryID] [int] NOT NULL,
 CONSTRAINT [PK_DoesBusinessIn_T] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[TerritoryID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeSkills_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkills_T](
	[EmployeeID] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SkillID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_EmployeeSkills_T] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[SkillID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_T](
	[OrderID] [smallint] NOT NULL,
	[OrderDate] [datetime] NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_Order_T] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_T](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductDescription] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductFinish] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductStandardPrice] [money] NULL,
	[ProductLineID] [int] NULL,
 CONSTRAINT [PK_Product_T] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salesperson_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[SALESPERSON_T](
	[SalespersonID] [int] IDENTITY(1,1) NOT NULL,
	[SalespersonName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalespersonPhone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalespersonFax] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TerritoryID] [int] NOT NULL,
 CONSTRAINT [PK_Salesperson_T] PRIMARY KEY CLUSTERED 
(
	[SalesPersonID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplies_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplies_T](
	[VendorID] [int] NOT NULL,
	[MaterialID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SuppliesUnitPrice] [money] NULL,
 CONSTRAINT [PK_Supplies_T] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[WorksIn_T]    Script Date: 04/01/2007 22:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[WorksIn_T](
	[EmployeeID] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WorkCenterID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_WorksIn_T] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[WorkCenterID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DoesBusinessIn_T]  WITH CHECK ADD  CONSTRAINT [FK_DoesBusinessIn_T_Customer_T] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer_T] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoesBusinessIn_T] CHECK CONSTRAINT [FK_DoesBusinessIn_T_Customer_T]
GO
ALTER TABLE [dbo].[DoesBusinessIn_T]  WITH CHECK ADD  CONSTRAINT [FK_DoesBusinessIn_T_Territory_T] FOREIGN KEY([TerritoryID])
REFERENCES [dbo].[Territory_T] ([TerritoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoesBusinessIn_T] CHECK CONSTRAINT [FK_DoesBusinessIn_T_Territory_T]
GO
ALTER TABLE [dbo].[EmployeeSkills_T]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_T_Employee_T] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_T] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeSkills_T] CHECK CONSTRAINT [FK_EmployeeSkills_T_Employee_T]
GO
ALTER TABLE [dbo].[EmployeeSkills_T]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_T_Skill_T] FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill_T] ([SkillID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EmployeeSkills_T] CHECK CONSTRAINT [FK_EmployeeSkills_T_Skill_T]
GO
ALTER TABLE [dbo].[Order_T]  WITH CHECK ADD  CONSTRAINT [FK_OrderR_T_Customer_T] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer_T] ([CustomerID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_T] CHECK CONSTRAINT [FK_Order_T_Customer_T]
GO
ALTER TABLE [dbo].[Product_T]  WITH CHECK ADD  CONSTRAINT [FK_Product_T_ProductLine_T] FOREIGN KEY([ProductLineID])
REFERENCES [dbo].[ProductLine_T] ([ProductLineID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product_T] CHECK CONSTRAINT [FK_Product_T_ProductLine_T]
GO
ALTER TABLE [dbo].[Salesperson_T]  WITH CHECK ADD  CONSTRAINT [FK_Salesperson_T_Territory_T] FOREIGN KEY([TerritoryID])
REFERENCES [dbo].[Territory_T] ([TerritoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Salesperson_T] CHECK CONSTRAINT [FK_Salesperson_T_Territory_T]
GO
ALTER TABLE [dbo].[Supplies_T]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_T_RawMaterial_T] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[RawMaterial_T] ([MaterialID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplies_T] CHECK CONSTRAINT [FK_Supplies_T_RawMaterial_T]
GO
ALTER TABLE [dbo].[Supplies_T]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_T_Vendor_T] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor_T] ([VendorID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplies_T] CHECK CONSTRAINT [FK_Supplies_T_Vendor_T]
GO
ALTER TABLE [dbo].[WorksIn_T]  WITH CHECK ADD  CONSTRAINT [FK_WorksIn_T_Employee_T] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_T] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorksIn_T] CHECK CONSTRAINT [FK_WorksIn_T_Employee_T]
GO
ALTER TABLE [dbo].[WorksIn_T]  WITH CHECK ADD  CONSTRAINT [FK_WorksIn_T_WorkCenter_T] FOREIGN KEY([WorkCenterID])
REFERENCES [dbo].[WorkCenter_T] ([WorkCenterID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorksIn_T] CHECK CONSTRAINT [FK_WorksIn_T_WorkCenter_T]
GO

/****** GROUP 3 Tables (Dependent on Group 2 Tables) *****/
/****** Object:  Table [dbo].[OrderLine_T]    Script Date: 04/01/2007 21:40:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine_T](
	[OrderID] [smallint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderedQuantity] [int] NULL,
 CONSTRAINT [PK_OrderLine_T] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProducedIn_T]    Script Date: 04/01/2007 21:40:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducedIn_T](
	[ProductID] [int] NOT NULL,
	[WorkCenterID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_ProducedIn_T] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[WorkCenterID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uses_T]    Script Date: 04/01/2007 21:40:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTEDIDENTIFIER ON
GO
CREATE TABLE [dbo].[Uses_T](
	[ProductID] [int] NOT NULL,
	[MaterialID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GoesIntoQuantity] [smallint] NULL,
 CONSTRAINT [PK_Uses_T] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[OrderLine_T]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_T_Order_T] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order_T] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLine_T] CHECK CONSTRAINT [FK_OrderLine_T_Order_T]
GO
ALTER TABLE [dbo].[OrderLine_T]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_T_Product_T] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product_T] ([ProductID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderLine_T] CHECK CONSTRAINT [FK_OrderLine_T_Product_T]
GO
ALTER TABLE [dbo].[ProducedIn_T]  WITH CHECK ADD  CONSTRAINT [FK_ProducedIn_T_Product_T] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product_T] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProducedIn_T] CHECK CONSTRAINT [FK_ProducedIn_T_Product_T]
GO
ALTER TABLE [dbo].[ProducedIn_T]  WITH CHECK ADD  CONSTRAINT [FK_ProducedIn_T_WorkCenter_T] FOREIGN KEY([WorkCenterID])
REFERENCES [dbo].[WorkCenter_T] ([WorkCenterID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProducedIn_T] CHECK CONSTRAINT [FK_ProducedIn_T_WorkCenter_T]
GO
ALTER TABLE [dbo].[Uses_T]  WITH CHECK ADD  CONSTRAINT [FK_Uses_T_Product_T] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product_T] ([ProductID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Uses_T] CHECK CONSTRAINT [FK_Uses__TProduct_T]
GO
ALTER TABLE [dbo].[Uses_T]  WITH CHECK ADD  CONSTRAINT [FK_Uses_T_RawMaterial_T] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[RawMaterial_T] ([MaterialID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Uses_T] CHECK CONSTRAINT [FK_Uses__TRawMaterial_T]
GO