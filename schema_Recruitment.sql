create database test;
go

use test;

create table Position
(
PCode varchar(4) primary key,
Description varchar(25) not null,
ProStrength decimal(4),
CurrStrength decimal(4)
);

create table NewsAd
(
NewsAdNo varchar(4) primary key,
NewsCode varchar(4),
AdStartDate DATETIME,
Deadline DATETIME
);


create table Agencies
(
AgencyCode varchar(4) primary key,
Name varchar(20),
City varchar(15),
Zip varchar(10),
PercentageCharge decimal(4)
);

create table Candidate
(
CCode varchar(6) constraint ectv_pk primary key,
Name varchar(25),
Phone varchar(15),
City varchar(10),
PCode varchar(4) references Position(PCode),
NewsAdNo varchar(4) references NewsAd(NewsAdNo),
AgencyCode varchar(4) references Agencies(AgencyCode)
);

insert into position values('P001','Sales Manager',100,82);
insert into position values('P002','Maketing  Manager',100,83);
insert into position values('P003','Financial Analyst',50,30);
insert into position values('P004','Training Co-ord',20 ,15);
insert into position values('P005','Database Analyst',10,8);

insert into newsad values('N001','101','04-Mar-2009','14-Mar-2009');
insert into newsad values('N002','102','15-Apr-2009','25-Apr-2009');
insert into newsad values('N003','105','02-Mar-2009','12-Mar-2009');
insert into newsad values('N004','105','04-May-2009','14-May-2009');
insert into newsad values('N005','105','05-Jun-2009','15-Jun-2009');


Insert into Agencies values('R001','Career Agencies','New Delhi','1155-3425',1200);
Insert into Agencies values('R002','Naukri Consultant','Pune','2255-3675',1000);
Insert into Agencies values('R003','Career Development','Kolkata','3355-3785',900);
Insert into Agencies values('R004','Human Power Mgt','Mumbai','4455-3435',800);
Insert into Agencies values('R005','Career Power','Chandigarh','5567-3788',500);

insert into Candidate values('E001','Subodh
Sharma','011-2233445','Delhi','P001',null,'R001');

insert into Candidate values('E002','Gagan
Singh','09967885678','Kota','P002','N001',null);

insert into Candidate values('E003','Ravi
Chopra','09865431245','Pune','P001','N002',null);

insert into Candidate values('E004','Alok
Tiwari','08765345678','Pune','P002',null,'R001');

insert into Candidate values('E005','Prashant
Jha','09812009809','Delhi','P003','N002',null);

insert into Candidate values('E006','Krishna
Kumar','09958934256','Kolkata','P003',null,'R002');

insert into Candidate values('E007','Seema
Sinha','09865348967','Kolkata','P004',null,'R002');

insert into Candidate values('E008','Neeraj
Singh','08745231435','Pune','P003','N003',null);

insert into Candidate values('E009','Mahesh
Bhupati','09867564523','Pune','P004','N004',null);

insert into Candidate values('E010','Mansoor
Ahmad','09867563434','Delhi','P003','N003',null);
commit;

