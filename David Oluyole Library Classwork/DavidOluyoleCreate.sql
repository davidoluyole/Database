create library;

use library;

create table user(
userID int(10) Not Null,
name varchar(45) Not Null,
gender varchar(1) Not Null,
address varchar(45) Not Null,
phone int(11) Not Null,
email varchar(45) Null,

constraint user_PK Primary Key(userID)
);
create table books(
bookID int(10) Not Null,
bookName varchar(45) Not Null,
bookauthor varchar(45) Not Null,
bookgenre varchar(45) Null,
bookpublisher varchar(45) Null,

constraint books_PK Primary Key(bookID)
);

create table staff(
staffID Int(10) Not Null,
name varchar(45) Not Null,
email varchar(45) Not Null,
phone varchar(45) Not Null,
address varchar(45) Not Null,
job varchar(45) Not Null,

constraint staff_PK Primary Key(staffID)
);

create table borrow(
borrowID int(10) Not Null,
bookID int (10) Not Null,
borrowdate date Not Null,
returndate date Not Null,
userID int(10) Null,
staffID int(10) Null,

constraint borrow_PK Primary Key(borrowID),

constraint user_fk  Foreign Key(userID)
					references user(userID),
constraint books_fk Foreign Key(bookID)
					references books(bookID),
constraint staff_fk Foreign Key(staffID)
						references staff(staffID)
);
