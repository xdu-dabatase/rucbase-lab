create table student (id int, name char(32), major char(32));
create index student (id);
create table grade (course char(32), student_id int, score float);
create index grade (student_id);
show tables;
desc student;
insert into student values (1, 'Tom', 'Computer Science');
insert into student values (2, 'Jerry', 'Computer Science');
insert into student values (3, 'Jack', 'Electrical Engineering');
select * from student where id>=1;
update student set major = 'Electrical Engineering' where id = 2;
select * from student where id>=1;
delete from student where name = 'Jack';
select * from student where id>=1;
insert into grade values ('Data Structure', 1, 90.0);
insert into grade values ('Data Structure', 2, 95.0);
insert into grade values ('Calculus', 2, 82.0);
insert into grade values ('Calculus', 1, 88.5);
select * from student, grade;
select id, name, major, course, score from student, grade where student.id = grade.student_id;
select id, name, major, course, score from student join grade where student.id = grade.student_id;
drop index student (id);
desc student;
drop table student;
drop table grade;
show tables;
#