USE [TallerChallenge]
GO

SELECT        
CONCAT(Persons.FirstName, ' ', Persons.LastName) AS [Full Name]
, Persons.Age, Orders.OrderID, Orders.DateCreated
, Orders.MethodofPurchase AS [Purchase Method]
, OrdersDetails.ProductNumber AS [Product Number]
, OrdersDetails.ProductOrigin AS [Product Origin]
FROM Orders 

INNER JOIN OrdersDetails ON Orders.OrderID = OrdersDetails.OrderID 
INNER JOIN Persons ON Persons.PersonID = Orders.PersonID
WHERE OrdersDetails.ProductId = 112222333
ORDER BY Orders.DateCreated DESC
