/*Is it true that customers who use Credit Cards avail of more offers? (In terms
of amount discounted)
normal discount = 0.002 and credit_discount = 0.1044
*/

select avg(UnitPriceDiscount) as credit_discount from Sales.SalesOrderHeader s1 inner join Sales.CreditCard s2 on s1.CreditCardID = s2.CreditCardID inner join 
Sales.SalesOrderDetail s3 on s1.SalesOrderID = s3.SalesOrderID where UnitPriceDiscount > 0 


select avg(UnitPriceDiscount) as normal_discount from Sales.SalesOrderHeader s1
inner join Sales.SalesOrderDetail s2 on s1.SalesOrderID = s2.SalesOrderID

where CreditCardID is null