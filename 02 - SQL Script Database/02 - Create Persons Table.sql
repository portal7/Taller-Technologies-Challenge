USE [TallerChallenge]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Persons](
	[PersonID] [uniqueidentifier] DEFAULT NEWSEQUENTIALID() NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Occupation] [varchar](50) NULL,
	[MaritalStatus] [char](3) NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)
WITH (    PAD_INDEX = OFF
		, STATISTICS_NORECOMPUTE = OFF
		, IGNORE_DUP_KEY = OFF
		, ALLOW_ROW_LOCKS = ON
		, ALLOW_PAGE_LOCKS = ON
		, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]) ON [PRIMARY]
GO

