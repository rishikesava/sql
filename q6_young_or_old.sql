/* 
answer is false , younger earns more(except age 50),why order by invalid in view?
*/
create view [analysis2] as 
select distinct age,max(Rate) as max_rate,PayFrequency,NationalIDNumber from HumanResources.Employee e1 inner join 
HumanResources.EmployeePayHistory e2 on e1.BusinessEntityID = e2.BusinessEntityID
where OrganizationLevel = 1 group by age,NationalIDNumber,Rate,PayFrequency

select * from [analysis2]