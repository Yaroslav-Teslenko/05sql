drop database MyDB;
create database MyDB;
use MyDB;
CREATE TABLE employees (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(30),
  phone VARCHAR(15),
  PRIMARY KEY (ID)
);
CREATE TABLE positions (
  id INT AUTO_INCREMENT NOT NULL,
  id_employe INT,
  position_name VARCHAR(30),
  salary DOUBLE,
  PRIMARY KEY (ID)
);
CREATE TABLE employees_info (
  id INT AUTO_INCREMENT NOT NULL,
  id_employe INT,
  marital_status VARCHAR(30),
  address VARCHAR(30),
  birthday DATE,
  PRIMARY KEY (ID)
);
insert into
  employees (name, phone)
values
  ('John Smith', '468521'),
  ('Michelle Green', '785412'),
  ('Jim Jones', '56321'),
  ('Denise L. Stephens', '781470'),
  ('Kim Howard', '693256');
  
insert into
  employees_info (id_employe, marital_status, address, birthday)
values
  (1, 'single', '500 Park Street, 10', '2000-06-15'),
  (2, 'single', '555 High Street, 7', '1999-01-30'),
  (3, 'single', '1000 5th Avenue, 4', '1998-01-30'),
  (4, 'single', '42 Galaxy Road, 6', '1992-01-30'),
  (5, 'single', '1 Rue Amusement,17', '2003-01-30');
insert into
  positions (id_employe, position_name, salary)
values
  (1,'manager',11247.7), (2,'manager',25000), (3,'hr',30000), (4,'security',9000),(5,'hr',45000);
  
  
##

select * from positions where salary>10000;
update employees_info set marital_status='gift' where id_employe=1;
select * from employees_info;


##  
CREATE TABLE cars (
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(30),
  phone VARCHAR(15),
  PRIMARY KEY (ID)
);
















