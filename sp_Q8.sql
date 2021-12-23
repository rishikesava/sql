/* To display employee first name, years worked for and total 
salary earned by an employee in
those years, assuming salary to be constant (20 pts)*/
create proc spEmployeeDetails2
@ID int
as
begin


select  e1.BusinessEntityID,SUBSTRING(LoginID,17,15) as FName,WorkingYears,WorkingYears*8*Rate*365 as Total_Salary from 
HumanResources.Employee e1 inner join 
HumanResources.EmployeePayHistory e2 on e1.BusinessEntityID = e2.BusinessEntityID
where e1.BusinessEntityID = @ID
end