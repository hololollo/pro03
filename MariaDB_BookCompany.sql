create database company;

use company;

create table sample (num int, title varchar(50), res timestamp);

drop table sample;

select * from sample;

insert into sample values (1, '샘플1', default);

insert into sample values (2, '샘플2', default);

insert into sample values (3, '샘플3', default);

commit;

#

create table member (id varchar(20), pw varchar(20), name varchar(10), email varchar(100), tel varchar(20), addr varchar(100), postcode varchar(200));




create table board (bno int auti_increment primary key, title varchar(200), content varchar(1000), resdate timestamp default current_timestamp)