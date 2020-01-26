

select emp_id,emp_name,emp_salary,emp.d_no,aa
from emp,(select d_no,AVG(emp_salary) aa
			from emp
			group by d_no)AVG_Tab
where emp.d_no = AVG_Tab.d_no
and emp_salary > aa;
-----------------------------------------------------			
select d_no,AVG(emp_salary)
from emp
group by d_no;
//อย่าลืม group by ตัวที่ไม่ได้คำนวน
--------------------------------------------------
select emp_id,emp_name,emp_salary
from emp
where emp_salary > (select emp_salary from emp
					where emp_name = 'AAA');
//เพื่อเพิ่มการยืดหยุ่น sub query
----------------------------------------------------
drop table emp purge;
drop table dep purge;

Create table dep(
	d_no		char(3),
	d_name	varchar2(50),
	CONSTRAINT dep_Pk PRIMARY KEY (d_no));
Insert into dep values('D01', 'Account');
Insert into dep values('D02', 'Finance');
Insert into dep values('D03', 'Marketing');

Create table emp(
	Emp_id 		char(3),
	Emp_name	varchar2(50),
	Emp_salary	number(5),
	D_no			 char(3),
	CONSTRAINT   Emp_Pk PRIMARY KEY (Emp_id),
	CONSTRAINT   Emp_Fk FOREIGN KEY (D_No)
		REFERENCES dep (D_NO) );
Insert into emp values('E01', 'AAA', 10000, 'D01');
Insert into emp values('E02', 'Alice', 20000, 'D02');
Insert into emp values('E03', 'jone', 15000, 'D01');
Insert into emp values('E04', 'bone', 14000, 'D03');
Insert into emp values('E05', 'Tom', 15000, 'D01');
Insert into emp values('E06', 'John', 10000, 'D02');
Insert into emp values('E07', 'Bom', 20000, 'D02');
Insert into emp values('E08', 'Bill', 25000, 'D03');
Insert into emp values('E09', 'Boy', 30000, 'D01');
Insert into emp values('E10', 'Cat', 15000, 'D01');
----------------------------------------------------