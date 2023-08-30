create database lms;
use lms;

create table book_details
(
 Book_no varchar(10),
 Book_name varchar(100),
 Author varchar(100),
 Publication varchar(100),
 Branch varchar(50),
 primary key (Book_no)
 );
 
 create table student_details
 (
  Usn varchar(20),
  S_name varchar(100),
  S_Branch varchar(100),
  M_no long,
  S_email varchar(100),
  S_password varchar(8),
  primary key(Usn)
  );
  
  create table borrower
  (
  Usn varchar(20),
  Book_no varchar(10),
  Issue_Date date,
  Return_Date date,
  Actual_return_date date,
  
  primary key(Usn,Book_no),
  foreign key (Usn) references student_details(Usn),
  foreign key (Book_no) references book_details(Book_no)
  );
  
  create table admin
  (
   A_email varchar(100),
   A_password varchar(8),
   primary key(A_email)
  );
  
  
  ALTER TABLE student_details
MODIFY COLUMN S_password char(30);

ALTER TABLE admin
MODIFY COLUMN A_password char(30);
  
        
insert into book_details
values ( "CS0101","Data Structures in C","Reema Theraja", "Oxford University Press" ,"CSE"),
		( "CS0102" ,"Programming in C","Balguruswamy", "Oxford University Press" ,"CSE"),
        ( "CS0103" ,"Operating System","	William Stalking", "Standford University Press " ,"CSE"),
        ( "CH0104" ,"Engineering Chemistry","S.S.Dara", "S.S. publication" ,"CHEMICAL"),
        ( "ME0105" ,"Elements of Mechanical Engineering","D.C Kulshreshtha", "D.C publication" ,"MECH"),
        ( "EC0107" ,"Basics of Electrical Engineering","B.C Punmia", "B.C publication" ,"ECE"),
        ( "CV0108" ,"Basic Civil Engineering","Dr Amitabh Dwivedi", "amitabh publication" ,"CIVIL"),
        ( "CS0109" ,"My SQL","A.K.Ray", "Rai publication" ,"CSE"),
        ("CS0110" , "Python Programming ","John Mnemonic","toronto press","CSE");
        
        
insert into student_details
values ("1BM21CS001","harsh","CSE", "9876835467","harsh.cs21@bmsce.ac.in","harsh_1"),
		("1BM21EC002","khush","ECE", "9876835478","khush.ece21@bmsce.ac.in","khush_1"),
        ("1BM21IS003","dev","ISE", "9876833467","dev.ise21@bmsce.ac.in","dev_1"),
        ("1BM21EN004","himanshu","ENI", "7886835467","himanshu.eni21@bmsce.ac.in","himanshu_1"),
        ("1BM21ME005","neerja","MECH", "9876835467","neerja.mec21@bmsce.ac.in","neerja_1"),
         ("1BM21CS075","harshitha","CSE", "9876835462","harshitha.cs21@bmsce.ac.in","harshi_1"),
          ("1BM21CS076","ibrahim","CSE", "9876835434","ibrahim.cs21@bmsce.ac.in","ibu_1");

        
insert into borrower
values ("1BM21IS003", "CS0101" , '2023-03-01','2023-03-16','2023-03-15'),
		("1BM21EN004", "CS0103" , '2023-03-01','2023-03-17','2023-03-15'),
        ("1BM21ME005", "CS0102" , '2023-03-01','2023-03-10','2023-03-15');
       
insert into admin
values ("kayal.cse@bmsce.ac.in" , "kayal_1"),
		("radhika.cse@bmsce.ac.in" , "radhika_1"),
        ("manjunath.cse@bmsce.ac.in" , "manjunath_1"),
        ("namratha.cse@bmsce.ac.in" , "namratha_1");
        
insert into book_details
values ( "CS0121","Software Engineering","R Sudha", "ARS Publications" ,"CSE"),
	   ( "CS0122","Modern Operating Systems","Andrew S Tanenbaum", "Prentice Hall" ,"CSE"),
       ( "CS0123","Introduction to Automata Theory","John Hopcroft", "Pearson" ,"CSE"),
       ( "AI0421","Make Your Own Neural Network","Tariq Rashid", "	Independently Published" ,"AIML"),
       ( "AI0422","Superintelligence","	Stuart Russell", "Pearson" ,"AIML"),
       ( "AI0423","Machine Learning For Absolute Beginners","O Theobald", "Scatterplot Press" ,"AIML"),
       ( "CH0121","Chemical Engineering and Technology","Ian Goodwin", "NY RESEARCH PRESS" ,"CHEMICAL"),
       ( "CH0122","Elements of Chemical Reaction Engineering","H Fogler", "Pearson" ,"CHEMICAL"),
       ( "EC0121","Semiconductor Physics","Donald Neamen", "McGraw Hill Education" ,"ECE"),
       ( "EC0122","Electronic Devices and Circuits","Robert L", "Pearson" ,"ECE"),
	   ( "CV0121","Civil Drafting Technology","David A. Madsen", "Pearson" ,"CIVIL"),
	   ( "CV0122","Building Construction Illustrated","France Ching", "Wiley" ,"CIVIL"),
       ( "ME0121","Heat and Mass Transfe","Kothandaraman", "New Age International" ,"MECH"),
       ( "ME0122","Mechanical Engineering","Brian Bunnell ", "Make Community" ,"MECH");
       


insert into borrower
values ("1BM21CS075", "CS0121" , '2023-03-01','2023-03-16','2023-03-07'),
		("1BM21CS075", "CS0122" , '2023-03-01','2023-03-16','2023-03-06'),
        ("1BM21CS075", "CS0123" , '2023-03-01','2023-03-16','2023-03-14'),
        ("1BM21CS075", "AI0421" , '2023-03-01','2023-03-16',NULL),
        ("1BM21CS075", "AI0422" , '2023-03-01','2023-03-16',NULL),
        ("1BM21CS075", "AI0423" , '2023-03-01','2023-03-16',NULL),
        ("1BM21CS075", "ME0121" , '2023-03-01','2023-03-16','2023-03-20'),
        ("1BM21CS075", "CV0121" , '2023-03-01','2023-03-16','2023-03-21'),
        ("1BM21CS075", "CV0122" , '2023-03-01','2023-03-16','2023-03-22');  
        
alter table borrower drop Late_fee;

insert into borrower
values ("1BM21CS075", "CS0121" , '2023-03-01','2023-03-16','2023-03-07'),
		("1BM21CS075", "CS0122" , '2023-03-01','2023-03-16','2023-03-06'),
        ("1BM21CS075", "CS0123" , '2023-03-01','2023-03-16','2023-03-14'),
        ("1BM21CS075", "AI0421" , '2023-03-01','2023-03-16',NULL),
        ("1BM21CS075", "AI0422" , '2023-03-01','2023-03-16',NULL),
        ("1BM21CS075", "AI0423" , '2023-03-01','2023-03-16',NULL),
        ("1BM21CS075", "ME0121" , '2023-03-01','2023-03-16',NULL),
        ("1BM21CS075", "ME0121" , '2023-03-01','2023-03-16','2023-03-20'),
        ("1BM21CS075", "CV0121" , '2023-03-01','2023-03-16','2023-03-21'),
        ("1BM21CS075", "CV0122" , '2023-03-01','2023-03-16','2023-03-22');
        
select * from admin;
select * from book_details;
select * from student_details;
select * from borrower;


delete from book_details where Book_no="ME106";
delete from student_details where Usn="1BM21CS075";

drop table admin;

show databases;

