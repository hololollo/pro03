create database company;

use company;
show tables;

create table sample (num int, title varchar(50), res timestamp);

drop table sample;

select * from sample;

insert into sample values (1, '샘플1', default);

insert into sample values (2, '샘플2', default);

insert into sample values (3, '샘플3', default);

commit;

#

create table member (id varchar(20) primary key, pw varchar(20) not null, name varchar(10) not null, email varchar(100), tel varchar(30), addr varchar(100), addr2 varchar(100), postcode varchar(100));
desc member;

-- 게시판
create table board (bno int auto_increment primary key, title varchar(200), content varchar(1000), author varchar(50), vcnt int, resdate timestamp default current_timestamp);
select * from board;
commit;

create table fileboard(no int auto_increment primary key, title varchar(200), content varchar(1000), url varchar(300), hits int default 0, resdate timestamp default current_timestamp, author varchar(200));

#상품테이블
create table product(pno int auto_increment primary key, pname varchar(100) not null, com varchar(1000), price int default 1000, img varchar(500));

# 재고 테이블 remark:참고사항, iprice, oprice
create table inventory(ino int auto_increment primary key, pno int, iprice int default 1000, oprice int default 1000, amount int default 1, remark varchar(200), foreign key(pno) references product(pno));

# 판매 테이블 tot:토탈, paymethod : 결제수단, dno:배송번호, del(delivery)
create table sales(sno int auto_increment primary key, pno int, amount int default 1, tot int, id varchar(20), paymethod varchar(20), paynum varchar(30), dno int, addr varchar(300), tel varchar(30));

alter table sales add constraint fk_mem1 foreign key(id) references member(id);
alter table sales add constraint fk_pro1 foreign key(pno) references product(pno);

create table basket(bno int auto_increment primary key, id varchar(20), pno int, amount int, remark varchar(100));

alter table basket add constraint fk_mem2 foreign key(id) references member(id);
alter table basket add constraint fk_pro1 foreign key(pno) references product(pno);
