--Camila Aseret Rodriguez Baldovino 4:J

Select name as Employee from Employee e1 where 
salary > (select salary from Employee where id=e1.managerId)