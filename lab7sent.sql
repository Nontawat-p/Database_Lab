CREATE OR REPLACE PROCEDURE LAB7_Register 
IS 
--DECLARE
	vtstdid	Student.stdid%type;
	vtfname	Student.stdfname%type;
	vtlname	Student.stdlname%type;
	vtcredit NUMBER(5);
	vtregistfee NUMBER(5);
BEGIN
	SELECT student.stdid,stdfname,stdlname,SUM(credit),SUM(credit*1000)
	INTO	vtstdid,vtfname,vtlname,vtcredit,vtregistfee
	FROM Student,Register,Subject
	WHERE student.stdid = '603020296-7'
	AND Register.subjcode = Subject.subjcode
	AND Student.stdid = Register.stdid
	GROUP BY student.stdid,stdfname,stdlname;
	DBMS_OUTPUT.PUT_LINE('Student ID :'||vtstdid);
	DBMS_OUTPUT.PUT_LINE('FirstName :'||vtfname);
	DBMS_OUTPUT.PUT_LINE('LastName :'||vtlname);
	DBMS_OUTPUT.PUT_LINE('Credit :'||vtcredit);
	DBMS_OUTPUT.PUT_LINE('Register Fee :'||vtregistfee);
END;
/
CREATE OR REPLACE PROCEDURE LAB7_StudentDept 
IS 
--DECLARE
	vtstdid	Student.stdid%type;
	vtfname	Student.stdfname%type;
	vtlname	Student.stdlname%type;
	vtadd	Student.stdaddress%type;
	vtfactname Fact.fname_tha%type;
	vtdeptname Dept.dname_tha%type;
BEGIN
	SELECT stdid,stdfname,stdlname,stdaddress,fname_tha,dname_tha
	INTO	vtstdid,vtfname,vtlname,vtadd,vtfactname,vtdeptname
	FROM Student,Fact,Dept
	WHERE student.stdid = '603020296-7'
	AND Student.fcode = Fact.fcode
	AND Student.dcode = Dept.dcode
	AND Fact.fcode = Dept.fcode;
	DBMS_OUTPUT.PUT_LINE('Student ID :'||vtstdid);
	DBMS_OUTPUT.PUT_LINE('FirstName :'||vtfname);
	DBMS_OUTPUT.PUT_LINE('LastName :'||vtlname);
	DBMS_OUTPUT.PUT_LINE('Address :'||vtadd);
	DBMS_OUTPUT.PUT_LINE('Faculty Name :'||vtfactname);
	DBMS_OUTPUT.PUT_LINE('Department Name :'||vtdeptname);
END;
/
DECLARE
	vtstdid	Student.stdid%type;
	vtfname	Student.stdfname%type;
	vtlname	Student.stdlname%type;
	vtadd	Student.stdaddress%type;
	vtfcode	Student.fcode%type;
	vtdcode Student.dcode%type;
	vttcode	Student.tcode%type;
BEGIN
	SELECT stdid,stdfname,stdlname,stdaddress,fcode,dcode,tcode
	INTO	vtstdid,vtfname,vtlname,vtadd,vtfcode,vtdcode,vttcode
	FROM Student
	WHERE stdid = '603020296-7';
	DBMS_OUTPUT.PUT_LINE('Student ID :'||vtstdid);
	DBMS_OUTPUT.PUT_LINE('FirstName :'||vtfname);
	DBMS_OUTPUT.PUT_LINE('LastName :'||vtlname);
	DBMS_OUTPUT.PUT_LINE('Address :'||vtadd);
	DBMS_OUTPUT.PUT_LINE('FCODE :'||vtfcode);
	DBMS_OUTPUT.PUT_LINE('DCODE :'||vtdcode);
	DBMS_OUTPUT.PUT_LINE('TCODE :'||vttcode);
END;
/
EXECUTE LAB7_Student;
drop PROCEDURE LAB7_Student ;
