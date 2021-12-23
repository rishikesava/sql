select WeekNumber,sum(StoreQty) as Inventory,UPC from Inventory
where ActivityCode = 'QA'
group by WeekNumber,UPC order by WeekNumber 

select WeekNumber,sum(StoreQty) as OrderedQty,UPC from Inventory
where ActivityCode = 'QP'
group by WeekNumber,UPC order by WeekNumber 

select WeekNumber,sum(StoreQty) as OutOfStockQty,UPC from Inventory
where ActivityCode = 'QO'
group by WeekNumber,UPC order by WeekNumber 