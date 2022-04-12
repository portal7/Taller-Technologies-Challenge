
-- If not exist, then create the Database
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'TallerChallenge')
BEGIN
	CREATE DATABASE [TallerChallenge]
END
GO

-- Set Database as Default
USE [TallerChallenge]
GO