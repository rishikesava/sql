/*
 Sum total of all earnings of employees holding highest title 
across all departments
*/
select DepartmentID,sum (Rate) as total_sum,sum(PayFrequency) as total_freq,sum (Rate) *sum(PayFrequency) as total
from HumanResources.Employee e1 inner join HumanResources.EmployeePayHistory e2
on e1.BusinessEntityID = e2.BusinessEntityID inner join HumanResources.EmployeeDepartmentHistory e3 on e2.BusinessEntityID = e3.BusinessEntityID
 where OrganizationLevel = 1 group by DepartmentID order by total desc