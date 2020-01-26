set linesize 200;

CREATE VIEW LAB4_REG_322212 AS 
SELECT  subject.subjcode,name_tha,student.stdID,stdFName,stdLName,grade
FROM student,subject,register
WHERE Student.stdid = register.stdid
	AND subject.subjcode  = register.subjcode 
	AND subject.subjcode = 322212
ORDER BY Student.stdfname DESC;

CREATE VIEW LAB4_Adviser AS 
SELECT  stdID,stdFName,stdLName,tfname,tlname 
FROM student,teacher
WHERE Student.tcode = teacher.tcode
ORDER BY teacher.tfname DESC;

CREATE VIEW LAB4_Fact AS 
SELECT  stdID,stdFName,stdLName,fname_tha,fname_eng 
FROM student,fact
WHERE Student.fcode = fact.fcode
ORDER BY student.fcode DESC;

CREATE VIEW LAB4_Subject AS 
SELECT  subjcode,name_Tha,credit FROM subject
ORDER BY name_Tha DESC;

CREATE VIEW LAB4_Student AS 
SELECT stdID,stdFName,stdLName,stdAddress FROM Student
ORDER BY stdID DESC;
 
SELECT pid,pname,price,tname,lname FROM product,ptype,location;
WHERE product.tid = ptype.tid
	AND product.tid = location.lid
ORDER BY price,tanme DESC;

CREATE VIEW test_product3 AS 
SELECT pid,pname,price,product.tid,ptype.tid,tname FROM product,ptype;
WHERE product.tid = ptype.tid(+);
ORDER BY price,tanme DESC;

SELECT pid,pname,price  New_price FROM product
SELECT pid,pname,price*1.2 FROM product

SELECT pid,pname,price FROM product
WHERE pid = 'P01' OR pid = 'P05';

SELECT pid,pname,price FROM product
WHERE pid IN ('P01','P05','P02');

SELECT pid,pname,price FROM product
WHERE price BETWEEN 400 AND 700;

SELECT pid,pname,price FROM product
WHERE price >= 400 AND price <= 700;

SELECT pid,pname,price FROM product
WHERE price > 500 AND pname LIKE 'r%';

SELECT col_name FROM table_name
WHERE coll op col2/value;
SELECT pid,pname,price FROM product;