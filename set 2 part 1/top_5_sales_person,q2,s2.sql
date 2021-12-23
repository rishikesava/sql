/*
Create a view which displays max sales done by top 5 salespeople who have been
given bonus followed by sales done by top 5 salespeople who have not been given
bonus 14 ppl given bonus,only 3 ppl not given bonus (274,285,287) which can be found by
select * from sales.SalesPerson where bonus = 0,top 5 bonus(286,284,288,280,283)
*/
create view [bonus] as
select top 5 BusinessEntityID,sum(Bonus) as total_bonus,sum(OrderQty) as total_quantity from Sales.SalesPerson  s1 inner join Sales.SalesOrderHeader s2 on
s1.BusinessEntityID = s2.SalesPersonID inner join Sales.SalesOrderDetail s3 on s2.SalesOrderID = s3.SalesOrderID

 where Bonus > 0 group by  BusinessEntityID order by total_quantity