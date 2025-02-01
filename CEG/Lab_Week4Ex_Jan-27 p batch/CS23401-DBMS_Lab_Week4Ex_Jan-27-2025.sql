-- 1.Create a table called account with the attributes account number, branch name, 
-- and balance number in which the account number of 14 digits is the primary key.
create table account(
    acc_number number(14) primary key,
    branch_name varchar(40),
    balance number
);
--2. Define integrity constraint to ensure the account balance is not zero with a check clause.
alter table account add CONSTRAINT ck CHECK(balance!=0);
--3.Ensure the constraint primary key is not null.
ALTER table account MODIFY acc_number not null;
--4. Alter the table account with one more attribute acc-type
alter table account add acc_type varchar(50);
--5. Insert at least 10 tuples into the table.
INSERT ALL
    INTO account VALUES (12345678901234, 'Branch1', 1000, 'Savings')
    INTO account VALUES (12345678901235, 'Branch2', 1500, 'Current')
    INTO account VALUES (12345678901236, 'Branch3', 2000, 'Savings')
    INTO account VALUES (12345678901237, 'Branch4', 2500, 'Current')
    INTO account VALUES (12345678901238, 'Branch5', 3000, 'Savings')
    INTO account VALUES (12345678901239, 'Branch6', 3500, 'Current')
    INTO account VALUES (12345678901240, 'Branch7', 4000, 'Savings')
    INTO account VALUES (12345678901241, 'Branch8', 4500, 'Current')
    INTO account VALUES (12345678901242, 'Branch9', 5000, 'Savings')
    INTO account VALUES (12345678901243, 'Branch10', 5500, 'Current')
SELECT * FROM dual;
--6. Find all the accounts having a balance of more than 10,000
select *from account where BALANCE>10000;
--7. Find all accounts belonging to a particular branch.
select *from account where BRANCH_NAME='Branch3';
--8. Delete all tuples from an account and retain the schema
delete from account;
--9. Delete the schema.
drop table account;

