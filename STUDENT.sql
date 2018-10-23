CREATE TABLE class_(
  class_id serial primary key,  
  class_name varchar(40) NOT NULL,
  division varchar(10) not null default 'a',
  st_cnt int not null check(st_cnt>=0),
  unique (class_name,division)
  );
  insert into class_(class_name,st_cnt)
  values ('ten',65);
  
  create table student(
    st_id serial primary key,
    st_fname varchar(30) not null,
    st_lname varchar(30) not null,
    addr varchar(30) not null,
    phone varchar(13),
    email varchar(30),
    class_id int references class_(class_id)
    );
  insert into student(st_fname,st_lname,addr,phone,email,class_id)
    values('abhijith','r','address','+910000000000','email',1),
            ('adish','ap','address','+910000000000','email',1),
           ('ram','p','address','+910000000000','email',1),
           ('hello','g','address','+910000000000','email',1),
           ('y','kjhd','address','+910000000000','email',1);
  create table company(
    emp_id int primary key not null ,
    name text not null,
    age smallint not null check(age>=18),
    address varchar(50),
    salary real,
    join_date date
    );
    create table department(
      id int primary key not null,
      dept varchar(50) not null,
      emp_id int not null
      );
