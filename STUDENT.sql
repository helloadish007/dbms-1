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
