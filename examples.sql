#lab 1
CREATE DATABASE university;

CREATE TABLE student(
	student_id integer,
	student_name varchar(30),
	address varchar(40), 
	telephone varchar(10)
);

CREATE TABLE course(
	course_no varchar(7),
	title varchar(40),
	instuctor_no integer
);

CREATE TABLE registration(
	student_id integer,
	course_no varchar(7),
	term varchar(15)
);

CREATE TABLE instructor(
	instructor_no integer, 
	instructor_name varchar(30),
	department varchar(50)
);