select IntegerValue
from SampleData
Order by IntegerValue Desc 
limit 1 offset 1;

CREATE TABLE Salarios (
Name Varchar(30),
Salary Varchar(30)
);

INSERT INTO Salarios VALUES 
('Ayumi Arenas', '$250,000'),
('Saul Hernandez', '$250,000'),
('Alan Luna', '$150,000'),
('Victor Sanchez', '$150,000'),
('Jose Solis', '$100,000'),
('Keysha Garcia', '$100,000');

select distinct Salary
from Salarios
Order by Salary Desc 
limit 1 offset 1;
