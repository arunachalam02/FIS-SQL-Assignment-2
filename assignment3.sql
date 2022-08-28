create database sqlassignment3

use database sqlassignment3

create table dept(  
  deptno numeric(4) primary key,  dname varchar(15),  loc varchar(15)
)

create table emp(  
  empno    numeric(4) primary key, ename varchar(10), job varchar(10),  
  mgr      numeric(4), hiredate date, sal numeric(10),  
  comm     numeric(10),deptno numeric(4),   
  constraint fk_deptno foreign key (deptno) references dept (deptno)
)

select * from dept

insert into dept(DEPTNO,DNAME,LOC) values 
(10,'ACCOUNTING','NEW YORK'), 
(20,'RESEARCH','DALLAS'), 
(30,'SALES','CHICAGO'), 
(40,'OPERATIONS','BOSTON') 

select * from emp

insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values( 
7369,'SMITH','CLERK',7902,'17-DEC-80',800,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'20-FEB-81',1600,300,30),
(7521,' WARD','SALESMAN',7698,'22-FEB-81',1250,500,30),
(7566,'JONES','MANAGER',7839,'02-APR-81',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'28-SEP-81',1250,1400,30),
(7698,'BLAKE','MANAGER',7839, '01-MAY-81' ,2850 ,NULL,30),
(7782,'CLARK','MANAGER', 7839, '09-JUN-81 ',2450,NULL,10),
(7788,'SCOTT','ANALYST', 7566 ,'19-APR-87',3000,NULL,20),
(7839,'KING','PRESIDENT',NULL, '17-NOV-81', 5000,NULL, 10),
(7844,'TURNER','SALESMAN', 7698,' 08-SEP-81' ,1500, 0, 30),
(7876,'ADAMS','CLERK', 7788, '23-MAY-87 ',1100,NULL,20),
(7900,'JAMES','CLERK', 7698, '03-DEC-81', 950 ,NULL,30),
(7902,'FORD','ANALYST', 7566,' 03-DEC-81 ',3000,NULL,20),
(7934,'MILLER','CLERK', 7782,'23-JAN-82' ,1300,NULL,10)

select ename from emp where job='MANAGER'

select ename,sal from emp where sal>1000

select ename,sal from emp where ename<>'JAMES'

select * from emp where ename like 'S%'

select ename from emp where ename like '%A%'

select ename from emp where ename like '__L%'

select ename,sal/30 as daily_sal from emp where ename='JONES'

select ename,sal*12 as tot_sal from emp

select avg(sal*12) as avg_salary from emp

select ename,job,sal,deptno from emp where job not in('SALESMAN') and deptno=30

select distinct emp.deptno,dept.dname from emp inner join dept on emp.deptno=dept.deptno 

select ename as employees,sal as monthly_sal,deptno from emp where sal>1500 and (deptno=10 or deptno=30)

select ename,job,sal from emp where (job='MANAGER'or job='ANALYST') and (sal not in(1000,3000,5000))

select ename,sal,comm from emp where comm is not null and comm>(sal*0.1)

select ename from emp where ename like '%L%L%' and (deptno=30 or mgr=7738)

select ename,deptno,datediff(year,hiredate,getdate()) as experience from emp where (datediff(year,hiredate,getdate())>10 ) and (datediff(year,hiredate,getdate())<20)

select dept.dname,emp.ename from emp inner join dept on emp.deptno=dept.deptno order by dept.dname asc,emp.ename desc

select datediff(year,hiredate,getdate()) as experience from emp where ename='MILLER'
