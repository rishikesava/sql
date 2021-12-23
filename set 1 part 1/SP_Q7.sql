/*
 To display employee first name, age (in years), 'Department 
Code' (1st two and last two
letters of department name, all in CAPS) and salary


*/
create proc spEmployeeDetails
@ID int
as
begin


select  e1.BusinessEntityID,SUBSTRING(LoginID,17,15) as FName,age,concat (Upper (SUBSTRING (Name,1,2)),
upper(SUBSTRING (Name,len(Name)-1,2))) as DepartmentCode,Rate from HumanResources.Employee e1 inner join 
HumanResources.EmployeePayHistory e2 on e1.BusinessEntityID = e2.BusinessEntityID inner join HumanResources.EmployeeDepartmentHistory e3 on 
e2.BusinessEntityID = e3.BusinessEntityID inner join HumanResources.Department e4 on e3.DepartmentID = e4.DepartmentID
where e1.BusinessEntityID = @ID
end