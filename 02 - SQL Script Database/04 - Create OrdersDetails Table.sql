USE [TallerChallenge]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrdersDetails](
	[OrderDetailID] [uniqueidentifier] DEFAULT NEWSEQUENTIALID() NOT NULL,
	[OrderID] [uniqueidentifier] NOT NULL,
	[ProductNumber] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductOrigin] [varchar](50) NULL,
 CONSTRAINT [PK_OrdersDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)	WITH (PAD_INDEX = OFF
			, STATISTICS_NORECOMPUTE = OFF
			, IGNORE_DUP_KEY = OFF
			, ALLOW_ROW_LOCKS = ON
			, ALLOW_PAGE_LOCKS = ON
			, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

