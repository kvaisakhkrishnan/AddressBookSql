--UC 1
--Ability to create a Address Book Service DB
create database AddressBook;
--Query OK, 1 row affected (0.03 sec)


--UC 2
--Ability to create a Address Book Table with first and
--last names, address, city, state, zip, phone number
--and email as its attributes
use AddressBook;
--Database changed
 create table AddressBook ( firstName varchar(25), lastName varchar(25), address varchar(50), city varchar(50), state varchar(50), zip char(6), phonenumber char(13), email varchar(25));
--Query OK, 0 rows affected (0.04 sec)



