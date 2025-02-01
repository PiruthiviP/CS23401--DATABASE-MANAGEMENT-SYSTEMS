--1. Write a query to create a table employee with empno, ename, designation, and salary.
create table employee(
    empno number primary key,
    ename VARCHAR(50),
    designation varchar(50),
    salary number(6,3)
);
--2. Write a query to display the column name and datatype of the table employee.
describe employee;
--3. i)Write a query to create a table from an existing table with all the fields.
create table emp2 as SELECT *from employee;

-- 3.ii) Write a query to create a table from an existing table with selected fields. 
create table emp3 as select empno ,ename from employee;
desc emp3;
-- 3.iii)Write a query to create a new table from an existing table without any record.

--4.i)Write a query to Alter the column EMPNO NUMBER(4) TO EMPNO NUMBER(6).
alter table employee modify empno number(6);
--4.ii) Write a query to Alter the table employee with multiple columns (EMPNO, ENAME.)
alter table employee modify ename varchar(90) MODIFY salary number(8,2);
--5. i) Write a query to add a new column in to employee
alter table employee add eage number;
--5 ii) Write a query to add multiple columns in to employee
alter table employee add lastname varchar(50) add fname varchar(40);
--6. i) Write a query to drop a column from an existing table employee
alter table employee drop column eage;
--ii) Write a query to drop multiple columns from employee
ALTER TABLE employee DROP COLUMN lastname, DROP COLUMN fname;
-- error:: Oracle (before 12c) does not support dropping multiple columns in a single ALTER TABLE statement.
--You have to drop each column one at a time.
--7. Write a query to rename table emp to employee.

--8. Write a query to create primary constraints with column level

ALTER TABLE emp ADD CONSTRAINT ek PRIMARY KEY (empno);
--9. Write a query to create foreign key constraints with column level
ALTER TABLE emp3 ADD CONSTRAINT ek FOREIGN KEY (salary) REFERENCES emp (salary);
--10. Write a query to create Check constraints with column level

--ALTER TABLE table_name ADD CONSTRAINT constraint_name CHECK (condition);
ALTER TABLE emp ADD CONSTRAINT chk_salary CHECK (salary >= 1000);
--11. Write a query to create unique constraints with column level

--ALTER TABLE table_name ADD CONSTRAINT constraint_name UNIQUE (column_name);

ALTER TABLE emp ADD CONSTRAINT unique_empno UNIQUE (empno);

--12. Write a query to create Not Null constraints with column level
--ALTER TABLE table_name MODIFY column_name NOT NULL;

ALTER TABLE emp MODIFY empno NOT NULL;

--13. Write a query to create Null constraints with column level
--ALTER TABLE table_name MODIFY column_name NULL;
ALTER TABLE emp MODIFY salary NULL;





