/*Create stored procedure which takes Product as an input and retrieves
information about the salesperson by whom maximum units of the item has been sold*/
/*create proc spMaxSales
@ProductID int
as
begin
select SalesPersonID,sum(OrderQty) as total_quantity,ProductID from Sales.SalesPerson  s1
inner join Sales.SalesOrderHeader s2 on
s1.BusinessEntityID = s2.SalesPersonID inner join Sales.SalesOrderDetail s3 on s2.SalesOrderID = s3.SalesOrderID
where ProductID = @ProductID
group by  BusinessEntityID,SalesPersonID,ProductID order by total_quantity desc
end*/
execute spMaxSales 711
