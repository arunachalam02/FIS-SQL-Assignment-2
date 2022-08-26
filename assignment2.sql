use database FISSQLassign2

select * from emp

insert into emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) 
values(7369,'SMITH','CLERK',7902,'17-DEC-80',800,NULL,20),
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

select * from dept

insert into dept(DEPTNO,DNAME,LOC) 
values (10,'ACCOUNTING','NEW YORK'), 
(20,'RESEARCH','DALLAS'), 
(30,'SALES','CHICAGO'), 
(40,'OPERATIONS','BOSTON') 

select * from emp where ename like 'A%'

select * from emp where mgr is NULL

select ename,empno,sal from emp where sal between 1200 and 1400
 
select empno,ename,dname,sal as old ,sal+(sal*10/100) as new from dept,emp
where dept.dname='research'and dept.deptno=emp.deptno

select count(job) as numOfclerks from emp where job='clerk'

select avg(sal),job as average from emp group by job 

select * from emp where sal=(select max(sal) from emp) or sal=(select min(sal) from emp)

select distinct dname from dept,emp where dept.deptno not in(select emp.deptno from emp) 

select emp.deptno,ename,sal from emp,dept 
where dept.deptno=emp.deptno and dept.deptno=20 and job='analyst' order by ename

select dname,sum(sal) as tot from dept,emp 
where dept.deptno=emp.deptno group by dname

select ename,sal from emp where ename in ('miller','smith')

select ename from emp where ename like '[AM]%'

select ename,sal*12 as ann_sal from emp where ename='smith'

select ename,sal from emp where sal between 1500 and 2850

select mgr,count(empno) as num_Emp from emp group by mgr having count(*)>2
