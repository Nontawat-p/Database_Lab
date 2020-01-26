drop view LAB5_Teacher_Outer;

CREATE VIEW LAB5_Teacher_Outer AS
SELECT student.stdid,stdfname, stdlname,
		teacher.tcode,tfname,tlname
FROM student,teacher
WHERE student.tcode = teacher.tcode (+)
ORDER BY teacher.tcode;
-------------------------------------------
CREATE VIEW LAB5_GPA_Outer AS
SELECT student.stdid,stdfname, stdlname,
	SUM(grade*credit)/SUM(credit) GPA
FROM student,register,subject
WHERE student.stdid = register.stdid(+)
	AND subject.subjcode =  register.subjcode (+)
GROUP BY student.stdid,stdfname,stdlname
ORDER BY GPA;

----------------------------------------------------------------
INSERT INTO student(stdid,stdfname,stdlname,stdaddress,fcode,dcode,tcode) 
VALUES('563020197-5','กฤษดา ','โสมายัง','123 จ.ขอนแก่น','F01','D03','T01');
INSERT INTO student(stdid,stdfname,stdlname,stdaddress,fcode,dcode,tcode) 
VALUES('563020200-2','ขวัญข้าว  ','เสียงเลิศ','11 จ.ขอนแก่น','F01','D03',NULL);
INSERT INTO student(stdid,stdfname,stdlname,stdaddress,fcode,dcode,tcode) 
VALUES('563020205-2','ชนนิกา  ','ปัญจันทร์สิงห์','15 จ.ขอนแก่น','F01','D03',NULL);
INSERT INTO student(stdid,stdfname,stdlname,stdaddress,fcode,dcode,tcode) 
VALUES('563020206-0','ชนัญชิดา  ','อินทะสร้อย','16 จ.ขอนแก่น','F01','D03',NULL);
-----------------------------------------------------
CREATE VIEW LAB5_GPA AS
SELECT student.stdid,stdfname, stdlname,
	SUM(grade*credit)/SUM(credit) GPA
FROM student,register,subject
WHERE student.stdid = register.stdid
	AND subject.subjcode =  register.subjcode
GROUP BY student.stdid,stdfname,stdlname
ORDER BY GPA;	
------------------------------------------------
CREATE VIEW LAB5_RegFee AS
SELECT student.stdid,stdfname, stdlname,
		year,semester,SUM(credit)TotalCredit,
		SUM(credit*1000)RegFee
FROM student,register,subject
WHERE student.stdid = register.stdid
	AND subject.subjcode =  register.subjcode
GROUP BY student.stdid,stdfname,stdlname,year,semester
ORDER BY student.stdid;	
	
-------------------------------------------------------
CREATE VIEW LAB5_Credit AS
SELECT student.stdid,stdfname,stdlname,SUM(credit)TotalCredit 
FROM Student,Subject,register
WHERE student.stdid = register.stdid
	AND subject.subjcode =  register.subjcode
GROUP BY student.stdid,stdfname,stdlname
ORDER BY student.stdid;
----------------------------------------------
SELECT product.tid,tname,AVG(price) 
FROM product,ptype
WHERE product.tid = ptype.tid(+)
GROUP BY product.tid,tname
ORDER BY product.tid;

SELECT product.tid,tname,AVG(price) 
FROM product,ptype
WHERE product.tid(+) = ptype.tid
GROUP BY product.tid,tname
ORDER BY product.tid;

SELECT COUNT(*)TOTAL_COUNT,
	MIN(price)maxP,
	MAX(price)minP,
	AVG(price) Average
from product;


AVG(col_name)
SUM(col_name)
MAX(col_name)
MIN(col_name)
COUNT(col_name)