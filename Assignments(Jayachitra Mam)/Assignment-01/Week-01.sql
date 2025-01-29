CREATE TABLE software_engineer (
    empid NUMBER PRIMARY KEY NOT NULL,
    projid VARCHAR2(5),
    lastname VARCHAR2(30),
    firstname VARCHAR2(30),
    hiredate DATE,
    language VARCHAR2(15),
    taskno NUMBER(2),
    privilege varchar(25)
);
--1. Insert the values atleast using three different insert method.
INSERT INTO SOFTWARE_ENGINEER 
VALUES (201, 'NPR', 'Gupta', 'Saurav', TO_DATE('95-1-1', 'YY-MM-DD'), 'VB', 52, 'Secret');

INSERT ALL
    INTO SOFTWARE_ENGINEER VALUES (390, 'KCI', 'Ghosh', 'Pinky', TO_DATE('1/05/93', 'MM/DD/YY'), 'Java', 11, 'Top Secret')
    INTO SOFTWARE_ENGINEER VALUES (789, 'Rnc', 'Agarwal', 'Praveen', TO_DATE('08/31/98', 'MM/DD/YY'), 'C++', 11, 'Secret')
    INTO SOFTWARE_ENGINEER VALUES (134, 'TIPPS', 'Chaudhury', 'Suprivo', TO_DATE('07/15/95', 'MM/DD/YY'), 'Java', 52, 'Secret')
    INTO SOFTWARE_ENGINEER VALUES (896, 'KCW', ']ha', 'Ranit', TO_DATE('06/15/97', 'MM/DD/YY'), 'Java', 10, 'Top Secret')
    INTO SOFTWARE_ENGINEER VALUES (345, 'TIPPS', 'John', 'Peter', TO_DATE('11/15/99', 'MM/DD/YY'), 'C++', 52, 'Confidential')
    INTO SOFTWARE_ENGINEER VALUES (563, 'NITTS', 'Anderson', 'Andy', TO_DATE('08/15/94', 'MM/DD/YY'), 'No', 89, 'Secret')
SELECT * FROM dual;

--2.Supriyo Chaudhury has resigned his job. Incorporate this change in the table PROGRAMMER.
delete from SOFTWARE_ENGINEER WHERE FIRSTNAME='Suprivo'and LASTNAME='Chaudhury'
select * from software_engineer;
--3.Add the column salary. Max size 10 and 4 places of decimal
alter table software_engineer add  salary number(10,4);
--4. Update the salary of all employees. (NITTS=90000, TIPPS=150000, KCW=97000, NPR=75000, Rnc=80000)
update  software_engineer set salary  = 90000 WHERE projid = 'NITTS';
update software_engineer set salary =150000 where projid = 'TIPPS';
update software_engineer set salary =75000 where projid ='NPR';
update software_engineer set salary= 97000 where projid ='Rnc';



--5. Saurav Gupta is assigned a different project with id NITTS and he would work with C++ now. Update this change in the PROGRAMMER table.

update software_engineer set projid='C++' where firstname='Saurav'and lastname='Gupta';
select *from software_engineer;

--6. Display the details of all Employees who was assigned for TIPPS
select *from software_engineer where projid='TIPPS';
--7.Display EMPNO, FirstName, LastName of all employees whose privilege is top secret
select empid,firstname,lastname from software_engineer where privilege='Top Secret';

--8. Display the details of all employees who are skilled in Java.
select *from software_engineer where language='Java';

--9)
INSERT INTO SOFTWARE_ENGINEER (Empid, LastName, FirstName, HireDate, ProjId, Language, TaskNo, Privilege)  
VALUES (896, 'Dilip', 'Kumar', TO_DATE('08-JAN-1997', 'DD-MON-YYYY'), 'Rnc', 'Python', 12, 'Secret');
--ORA-00001: unique constraint (constraint_name) violated

--10.The column TaskNo in the PROGRAMMER Table is no longer needed. Delete the column.
ALTER TABLE SOFTWARE_ENGINEER DROP COLUMN TaskNo;

select *from software_engineer;
