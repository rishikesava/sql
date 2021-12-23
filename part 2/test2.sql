select * from Sales s1 inner join Inventory s2 on s1.UPC = s2.UPC

select WeekNumber,UPC,sum(RegularPOSUnits) as total_units ,sum (RegularSalesDollars) as total_sales_amount

from [Sales]
group by WeekNumber,UPC order by WeekNumber