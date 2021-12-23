/* first created a column age in employee table and by default the values are null.later updated the values using 
function datediff(YY,BirthDate,getdate()) as age.now a column with desired values as been created and performed avg function on 
it to get avg age which is 42*/

select avg (age) as avg_age from HumanResources.Employee;
