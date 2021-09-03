
use fitnesstracker;

create table users(
	user_id int Primary Key,
    user_name varchar(50) Not Null,
    user_dob date Not Null,
    user_emailid varchar(50) ,
    user_phoneno varchar(50)
);

create table address(
	address_id int Primary Key,
    address_line1 varchar(50) Not Null,
    address_line2 varchar(50) Not Null,
    city varchar(50) Not Null,
    pincode int Not Null,
    state varchar(50) Not Null,
    country varchar(50) Not Null,
    user_id int,
    Foreign Key(user_id) References Users(user_id)
);

create table appointments(
	appointment_id int Primary Key,
    trainer_preference varchar(50) Not Null,
    physiotherapist_need boolean default false,
    package_type varchar(50) Not Null ,
    number_of_weeks int Not Null,
    amount double Not Null,
    user_id int,
    Foreign Key(user_id) References Users(user_id)
);

Insert into Users Values
(100,'Tejas Ghadshi','1999-11-09','tejasghadshi@gmail.com','9889187443'),
(101,'Raj Gurav','1997-11-14','rajgurav@gmail.com','9889186474'),
(102,'Rohit Sharma','1989-05-22','rohitsharma45@gmail.com','9889187353'),
(103,'Virat Kholi','1990-11-05','viratkholi18@gmail.com','9157537443'),
(104,'Dinesh Kartik','1984-12-11','dkartik@gmail.com','9735337829');

Insert into Address Values
(01,'Flat No. 505 Ansal Heights','Dr K.K.Marg','Mumbai',400003,'Maharahtra','India',100),
(02,'55 Sudar Building','Dr G.M.Marg','Mumbai',400001,'Maharahtra','India',101),
(03,'54 Appartment Lotus Tower','Dr Ani Beasen Marg','Mumbai',400019,'Maharahtra','India',102),
(04,'11 Bunglow','Rani Chowk','Dehli',500912,'Dehli','India',103),
(05,'No.2 Bunglow ','StAdrews Road','Punji',309928,'Goa','India',104),
(06,'85 Plot LokandWala','Dr D.G.Marg','Mumbai',400018,'Maharahtra','India',103);

Insert into Appointments Values
(501,'Male Trainer',true,'One time appointment',0,500,100),
(502,'Male Trainer',false,'4 session a week',2,400,101),
(503,'No Preference',false,'One time appointment',0,500,102),
(504,'Female Trainer',false,'5 session a week',4,300,103),
(505,'Male Trainer',true,'One time appointment',0,500,104);
 
select * from users;
Select * from address;
Select * from appointments;
