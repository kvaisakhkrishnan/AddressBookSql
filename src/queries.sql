--UC 1
--Ability to create a Address Book Service DB
create database AddressBook;
Query OK, 1 row affected (0.03 sec)


--UC 2
--Ability to create a Address Book Table with first and
--last names, address, city, state, zip, phone number
--and email as its attributes
use AddressBook;
--Database changed
 create table AddressBook ( firstName varchar(25), lastName varchar(25), address varchar(50), city varchar(50), state varchar(50), zip char(6), phonenumber char(13), email varchar(25));
Query OK, 0 rows affected (0.04 sec)

--UC 3
--Ability to edit existing contact person using their name
insert into AddressBook values ('Vaisakh', 'Krishnan', 'Kiliyattuveliyil', 'Alleppey', 'Kerala', '688003', '91 8129348583', 'tempmail@gmail.com');
+-----------+----------+------------------+----------+--------+--------+---------------+--------------------+
| firstName | lastName | address          | city     | state  | zip    | phonenumber   | email              |
+-----------+----------+------------------+----------+--------+--------+---------------+--------------------+
| Vaisakh   | Krishnan | Kiliyattuveliyil | Alleppey | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
+-----------+----------+------------------+----------+--------+--------+---------------+--------------------+

--UC4
--Ability to edit existing contact person using their name
 update AddressBook set city = 'Alappuzha' where firstName = 'Vaisakh' and lastName = 'Krishnan';
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| firstName | lastName | address          | city      | state  | zip    | phonenumber   | email              |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| Vaisakh   | Krishnan | Kiliyattuveliyil | Alappuzha | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+


--UC5
--Ability to delete a person using person's name
insert into AddressBook values ('Firstname', 'Lastname', 'Kiliyattuveliyil', 'Alleppey', 'Kerala', '688003', '91 8129348583', 'tempmail@gmail.com');
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| firstName | lastName | address          | city      | state  | zip    | phonenumber   | email              |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| Vaisakh   | Krishnan | Kiliyattuveliyil | Alappuzha | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
| Firstname | Lastname | Kiliyattuveliyil | Alleppey  | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
delete from AddressBook where firstName = 'Firstname';
Query OK, 1 row affected (0.00 sec)
select * from addressbook;
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| firstName | lastName | address          | city      | state  | zip    | phonenumber   | email              |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| Vaisakh   | Krishnan | Kiliyattuveliyil | Alappuzha | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+


--UC6
--Ability to Retrieve Person belonging to a City or State from the Address Book
 select * from AddressBook where city = 'Alappuzha' or state = 'Kerala';
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| firstName | lastName | address          | city      | state  | zip    | phonenumber   | email              |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| Vaisakh   | Krishnan | Kiliyattuveliyil | Alappuzha | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+


--UC7
--Ability to understand the size of address book by City and State
 select city, count(*) as size from AddressBook group by city;
+-----------+------+
| city      | size |
+-----------+------+
| Alappuzha |    1 |
+-----------+------+

 select state, count(*) as size from AddressBook group by state;
+--------+------+
| state  | size |
+--------+------+
| Kerala |    1 |
+--------+------+

--UC8
--Ability to retrieve entries sorted alphabetically by Person’s name for a given city

 select * from AddressBook where city = 'Alappuzha' order by firstName ;
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| firstName | lastName | address          | city      | state  | zip    | phonenumber   | email              |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+
| Firstname | Lastname | Kiliyattuveliyil | Alappuzha | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
| Vaisakh   | Krishnan | Kiliyattuveliyil | Alappuzha | Kerala | 688003 | 91 8129348583 | tempmail@gmail.com |
+-----------+----------+------------------+-----------+--------+--------+---------------+--------------------+


