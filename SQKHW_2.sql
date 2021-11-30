
--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
CREATE TABLE employees (
    id serial  primary key,
    employee_name varchar(50) not null
   );
--Наполнить таблицу employee 70 строками.
  INSERT INTO employees (employee_name)  
VALUES 
('Jennie Peterson'),
('John Romero'),
('Charlie Robertson'),
('Jeanne Moody'),
('Robin Jackson'),
('Joyce Perry'),
('Edward Newman'),
('Adam Murray'),
('Bertha Duncan'),
('Thomas Fowler'),
('Tiffany Vargas'),
('Ruth Morris'),
('Sally Adams'),
('Paul Ball'),
('Shirley Alexander'),
('Luis Green'),
('Ruby Wilson'),
('Martin Pierce'),
('Phyllis Reyes'),
('Elaine Pope'),
('Douglas Burns'),
('Donald Smith'),
('Philip Lyons'),
('Nicole Jones'),
('Kevin Hall'),
('David Gross'),
('Wanda Reynolds'),
('Elizabeth Norman'),
('Linda Morales'),
('Michael Parks'),
('Kathleen Torres'),
('Julie Martin'),
('Sharon Hogan'),
('Darlene Bailey'),
('Michele Flowers'),
('Armando Foster'),
('Cody Scott'),
('Susan Goodman'),
('James Alexander'),
('Bernice Rogers'),
('Eileen Jones'),
('Glenda Black'),
('William Kennedy'),
('Cindy Armstrong'),
('Jose Wells'),
('Marvin Bradley'),
('Billy Berry'),
('Gregory Adams'),
('Travis Flores'),
('Gordon Perez'),
('Kim Anderson'),
('Joshua Jackson'),
('Linda Hamilton'),
('Helen Bowman'),
('Phyllis Price'),
('Michelle Green'),
('Ruth Vasquez'),
('Anita Watson'),
('Theodore Hart'),
('Ernest Wells'),
('Naomi Ramsey'),
('Linda Duncan'),
('Esther Griffith'),
('Sarah Obrien'),
('Deborah Smith'),
('Richard Blake'),
('Joanne Bryan'),
('Robert Jones'),
('Julie Ward'),
('Sharon Reed');

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

CREATE TABLE monthly_salary(
    id serial  primary key,
    monthly_salary int not null
   );

--Наполнить таблицу salary 15 строками:

insert into monthly_salary (monthly_salary)
values 
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
CREATE TABLE employee_salary(
    id serial  primary key,
    employee_id int not null unique,
    salary_id int not null
   );
 select *from employee_salary 
 
 --Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id,salary_id)
values 
(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(27,4),
(16,1),
(33,7),
(71,2),
(72,3),
(73,5),
(74,6),
(75,8),
(2,9),
(4,10),
(65,11),
(66,12),
(67,13),
(80,5),
(81,8),
(83,6),
(84,9),
(85,14),
(50,10),
(51,11),
(53,12),
(54,13),
(55,14),
(56,15),
(12,1),
(13,2),
(14,3),
(26,4),
(36,5),
(17,6),
(18,7),
(19,8);

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
CREATE TABLE roles(
    id serial  primary key,
    role_name int not null unique
   );
--Поменять тип столба role_name с int на varchar(30) 
ALTER TABLE roles
ALTER COLUMN role_name TYPE varchar(30);


--Наполнить таблицу roles 20 строками
insert into roles (role_name)
values 
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table  roles_employee (
id serial primary key,
employee_id int not null unique, 
role_id int not null, 
FOREIGN KEY (employee_id) REFERENCES employees (id),
FOREIGN key (role_id) REFERENCES roles (id));

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values 
(7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(21,3),
(34,4),
(6,7),
(1,5),
(2,6),
(4,8),
(15,18),
(16,19),
(17,20),
(18,5),
(24,6),
(50,1),
(51,2),
(52,3),
(53,4),
(54,5),
(55,6),
(56,7),
(35,8),
(36,9),
(37,10),
(38,11),
(39,12),
(40,13),
(41,14),
(42,15),
(43,16),
(44,17),
(45,17),
(46,18),
(49,20),
(26,5);

  select * from roles_employee
  
  