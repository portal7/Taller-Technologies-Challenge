USE [TallerChallenge]
GO

CREATE INDEX IX_Products_ProductNumber ON dbo.OrdersDetails (ProductNumber);