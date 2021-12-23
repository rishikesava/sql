/* 
used join n connected department n dep_history table to find the dep_name ,question was 10 dep but only 6 works night shift

*/

select count(HumanResources.EmployeeDepartmentHistory.BusinessEntityID) as total_emp ,
HumanResources.EmployeeDepartmentHistory.DepartmentID,
HumanResources.Department.Name
from HumanResources.EmployeeDepartmentHistory inner join HumanResources.Department on HumanResources.EmployeeDepartmentHistory.DepartmentID 
= HumanResources.Department.DepartmentID where ShiftID=3 group by HumanResources.EmployeeDepartmentHistory.DepartmentID,
HumanResources.Department.Name order by total_emp desc

