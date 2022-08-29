1. create table books(id numeric(2),
   title varchar(40),
   author varchar(40),
   isbn numeric(12) unique,
   published_date datetime);
   insert into books values(1,"My First SQL book","Mary Parker",981483029127,"2012-02-22 12:08:17");
   insert into books values(2,"My Second SQL book","John Mayer",857300923713,"1972-07-03 09:22:45");
   insert into books values(3,"My Third SQL book","Cary Flint",523120967812,"2015-10-18 14:05:44");

2. create table books(id numeric(2),
   title varchar(40),
   author varchar(40),
   isbn numeric(12) unique,
   published_date datetime);
   insert into books values(1,"My First SQL book","Mary Parker",981483029127,"2012-02-22 12:08:17");
   insert into books values(2,"My Second SQL book","John Mayer",857300923713,"1972-07-03 09:22:45");
   insert into books values(3,"My Third SQL book","Cary Flint",523120967812,"2015-10-18 14:05:44");
   
   create table reviews(id numeric(2),
   book_id numeric(2),
   reviewer_name varchar(40),
   content varchar(40),
   rating numeric(2) ,
   published_date datetime);
   insert into reviews values(1,1,"John Smith","My first review",4,"2017-12-10 05:50:11");
   insert into reviews values(2,2,"John Smith","My second review",5,"2017-10-13 15:05:12");
   insert into reviews values(3,2,"Alice Walker","Another review",1,"2017-10-22 23:47:10");
   
   
3. create table books(id numeric(2),
   title varchar(40),
   author varchar(40),
   isbn numeric(12) unique,
   published_date datetime);
   insert into books values(1,"My First SQL book","Mary Parker",981483029127,"2012-02-22 12:08:17");
   insert into books values(2,"My Second SQL book","John Mayer",857300923713,"1972-07-03 09:22:45");
   insert into books values(3,"My Third SQL book","Cary Flint",523120967812,"2015-10-18 14:05:44");
   
   create table reviews(id numeric(2),
   book_id numeric(2),
   reviewer_name varchar(40),
   content varchar(40),
   rating numeric(2) ,
   published_date datetime);
   insert into reviews values(1,1,"John Smith","My first review",4,"2017-12-10 05:50:11");
   insert into reviews values(2,2,"John Smith","My second review",5,"2017-10-13 15:05:12");
   insert into reviews values(3,2,"Alice Walker","Another review",1,"2017-10-22 23:47:10");


4.create table customer(id numeric(1),
  name varchar(30),
  age numeric(2),
  address varchar(30),
  salary float
  );
  insert into customer values(1,"Ramesh",32,"Ahmedabad",2000.0);
  insert into customer values(2,"Khilan",25,"Delhi",1500.0);
  insert into customer values(3,"Kaushik",23,"Kota",2000.0);
  insert into customer values(4,"Chaitali",25,"Mumbai",6500.0);
  insert into customer values(5,"Hardik",27,"Bhopal",8500.0);
  insert into customer values(6,"Komal",22,"MP",4500.0);
  insert into customer values(7,"Muffy",24,"Indore",10000.0);


5.create table customer(id numeric(1),
  name varchar(30),
  age numeric(2),
  address varchar(30),
  salary float
  );
  insert into customer values(1,"Ramesh",32,"Ahmedabad",2000.0);
  insert into customer values(2,"Khilan",25,"Delhi",1500.0);
  insert into customer values(3,"Kaushik",23,"Kota",2000.0);
  insert into customer values(4,"Chaitali",25,"Mumbai",6500.0);
  insert into customer values(5,"Hardik",27,"Bhopal",8500.0);
  insert into customer values(6,"Komal",22,"MP",4500.0);
  insert into customer values(7,"Muffy",24,"Indore",10000.0);

  create table orders(oid numeric(3),
  dated datetime,
  customer_id numeric(1),
  amount float
  );

  insert into orders values(102,"2009-10-08 00:00:00",3,3000);
  insert into orders values(100,"2009-10-08 00:00:00",3,1500);
  insert into orders values(101,"2009-11-20 00:00:00",2,1560);
  insert into orders values(103,"2009-05-20 00:00:00",4,2060);



