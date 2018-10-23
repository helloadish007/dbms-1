CREATE TABLE class_(
class_id serial primary key,
class_name varchar(40) NOT NULL,
division varchar(10) not null default 'a',
st_cnt int not null check(st_cnt>=0),
