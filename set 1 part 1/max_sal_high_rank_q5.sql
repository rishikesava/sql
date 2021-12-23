/*
 Write a view to display Maximum Salary earned by the employee 
with the highest title in
each of these 10 departments

*/
 create view [Maximum_Salary] as 
 select max(Rate) as Max_Salary,DepartmentID,PayFrequency from HumanResources.EmployeePayHistory e1 inner join HumanResources.EmployeeDepartmentHistory e2
 on e1.BusinessEntityID = e2.BusinessEntityID inner join HumanResources.Employee e3 on e2.BusinessEntityID = e3.BusinessEntityID
where OrganizationLevel = 1
group by DepartmentID,PayFrequency

select * from[Maximum_Salary]