# Stored Procedure:

Delimiter //
Create procedure Service()
Begin
select D.EmpId,D.EmpName,D.Salary,
E.DeptName,L.LocationName Location
from Department D inner join Employee E
on D.DeptId=E.DeptId
inner join Location L
on D.LocationId=L.LocationId;
End //

Call Service;

Delimiter //
create procedure Service1(IN Salary int)
Begin
Select*from Department Where Department.Salary=Salary;
End //
Call Service1(30000);
Drop procedure job2;