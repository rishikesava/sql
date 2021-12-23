/*
avg sal for top 10 department(pay frequency not taken into consideration)


*/
select top 10 HumanResources.EmployeeDepartmentHistory.DepartmentID,HumanResources.Department.Name,avg(Rate) as avgs,
avg(PayFrequency) as pay_freq,avg(Rate)*avg(PayFrequency) as total
from 
HumanResources.EmployeePayHistory inner join HumanResources.EmployeeDepartmentHistory on HumanResources.EmployeePayHistory.BusinessEntityID = 
HumanResources.EmployeeDepartmentHistory.BusinessEntityID inner join HumanResources.Department on 
HumanResources.Department.DepartmentID = HumanResources.EmployeeDepartmentHistory.DepartmentID
group by  HumanResources.EmployeeDepartmentHistory.DepartmentID ,HumanResources.Department.Name order by total desc