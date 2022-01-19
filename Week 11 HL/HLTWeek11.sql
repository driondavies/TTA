create database PersonalBanking;
show databases;
use PersonalBanking;
create table PersonalDetails(
EmailAddress varchar (255) not null unique,
Title varchar (10),
FirstName varchar (50),
MiddleName varchar (50),
Lastname varchar (50),
HouseNameNumber varchar (10),
Streetname varchar (100),
CityTowm varchar (100),
PostCode varchar (8),
Country varchar (50),
TelNo varchar (10),
Age int,
Occupation varchar (50)
);

create table AccountDetails(
SortCode varchar(6) not null,
AccountNo varchar(8) not null unique,
EmailAddress varchar (255) not null,
AccountName varchar (255),
AccountType varchar(50),
AccountBalance decimal(10,2),
CreationDate date,
EndDate date
);
DROP DATABASE banking;
show databases;
explain PersonalDetails;
explain AccountDetails;

use PersonalBanking;
alter table PersonalDetails
add column CustomerID int auto_increment key first,
add column DateOfBirth date;

describe PersonalDetails;

describe AccountDetails;

insert into PersonalDetails(CustomerID, EmailAddress, Title,FirstName ,MiddleName ,Lastname,HouseNameNumber,Streetname, CityTowm , PostCode,Country,TelNo , Age, Occupation, DateOfBirth)
values (1,'abc@yahoo.com', 'Ms.', 'Sue', '', 'Fox','156', 'Tristy', 'Sunch', 'SH2TYU', 'Australia','8883456890', 62, 'Artist','1960/05/11'),
(2,'ikt@hotmail.com', 'Mr.', 'John', 'H', 'Ginn','89', 'Mango', 'Hink', 'HT97UT', 'Australia','8979956890', 24, 'Hair Dresser','1995/12/31'),
(3,'kv2@aol.com', 'Mrs.', 'Lina', 'G', 'Hon','12', 'Linnet', 'Anthy', 'NU2TBU', 'Australia','7408345689', 42, 'Psychiatrist','1980/12/31'),
(4, 'jbc@gmail.com', 'Mr.', 'Johnny', 'M', 'PLat','102', 'Trinity Lane', 'Newport', 'NU2TBU', 'Australia','123456890', 16, 'Analyst','2004/06/15'),
(5, 'pic@yahoo.com', 'Sir', 'Tom', 'Fox', 'Hugh','177', 'Temple Lane', 'Temple', 'TT2THU', 'Australia','753456890', 32, 'Security','1990/02/02'),
(6, 'iuc@yahoo.com', 'Miss', 'Angela', 'Shelina', 'Lima','102', 'Trinity Lane', 'Newport', 'NU2TBU', 'Australia','1234779990', 23, 'Student','1999/10/19'),
(7, 'anc@yahoo.com', 'Ms.', 'Lisa', 'Harriet', 'Tug','79', 'Trinity Lane', 'Newport', 'NU2TBU', 'Australia','123886890', 25, 'Analyst','1997/06/21'),
(8, 'abx@yahoo.com', 'Mrs.', 'Charlotte', '', 'Kent','108', 'Shoe Lane', 'Newport', 'NU2TBU', 'Australia','190456890', 33, 'Midwife','1989/04/15'),
(9, 'hjc@nil.com', 'Mr.', 'James', '', 'Dart','57', 'Sweet Lane', 'Dawning', 'DK7TRY', 'Australia','1234766890', 44, 'Carpenter','1980/08/11'),
(10, 'abx@ink.com', 'Mr.', 'Mark', 'F', 'Frost','42', 'Western', 'Thames', 'TH2TBU', 'Australia','123336890', 25, 'Nurse','1997/06/13');

select * from PersonalDetails;

alter table AccountDetails
drop column EndDate;

describe AccountDetails;

insert into AccountDetails(SortCode,AccountNo, EmailAddress,AccountName, AccountType, AccountBalance, CreationDate)
values('202287','23567829', 'abc@yahoo.com', 'Ms Sue Fox', 'Savings', 789.00, '2019/02/11'),
('502387','88565829', 'iuc@yahoo.com', 'Miss Angela Shelina', 'Current', 88789.00, '2020/07/15'),
('244486','67567822', 'anc@yahoo.com', 'Ms. Lisa Harriet Tug', 'ISA', 989.00, '2012/07/09'),
('772388','80567839', 'abx@ink.com', 'Mark F Frost', 'Current', 53789.00, '1998/12/12');



select * from AccountDetails;

select pd.CustomerID, ad.AccountNo, ad.AccountBalance
from PersonalDetails as pd 
join AccountDetails as ad on ad.EmailAddress=pd.EmailAddress;

select * from AccountDetails
where AccountBalance between 1000 and 100000
order by AccountBalance asc;

update AccountDetails
set AccountBalance = 1078.00
where AccountNo = '23567829';

