select Firstset.WeekNumber,Firstset.UPC,Firstset. total_sales_amount,Firstset.total_units,
Secondset.OutOfStockQty,Thirdset.OrderedQty,Fourthset.Inventory

from

(select WeekNumber,UPC,sum(RegularPOSUnits) as total_units ,sum (RegularSalesDollars) as total_sales_amount

from [Sales]
group by WeekNumber,UPC  ) as Firstset
inner join
(select WeekNumber,sum(StoreQty) as OutOfStockQty from Inventory
where ActivityCode = 'QO'
group by WeekNumber,UPC  ) as Secondset 
on Firstset.WeekNumber = Secondset.WeekNumber
inner join
(select WeekNumber,sum(StoreQty) as OrderedQty from Inventory
where ActivityCode = 'QP'
group by WeekNumber,UPC) as Thirdset
on Secondset.WeekNumber = Thirdset.WeekNumber
inner join 
(select WeekNumber,sum(StoreQty) as Inventory from Inventory
where ActivityCode = 'QA'
group by WeekNumber,UPC) as Fourthset
on Thirdset.WeekNumber = Fourthset.WeekNumber
order by Firstset.WeekNumber