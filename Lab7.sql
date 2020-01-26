SET SERVEROUTPUT ON   -- open server
BEGIN
	DBMS_OUTPUT.PUT_LINE('My name is Nontawat  prathumma'); //print
DECLARE
	A NUMBER(5) :=10; --input by keybord  A NUMBER(5) :=&A;
	B NUMBER(5) :=90;
	C NUMBER(6);
BEGIN	
	C := A+B;
	DBMS_OUTPUT.PUT_LINE('A:'||A);
	DBMS_OUTPUT.PUT_LINE('B:'||B);
	DBMS_OUTPUT.PUT_LINE('C:'||C);
END;
/
CREATE OR REPLACE PROCEDURE test_2
IS 
--DECLARE
	vtid	product.pid%type;
	vtname	product.pname%type;
	vtprice	product.price%type;
	vlname	location.lname%type;
BEGIN
	SELECT pid,pname,price,lname
	INTO	vtid,vtname,vtprice,vlname
	FROM Product,location
	where pid = 'P10' 
	AND product.lid = location.lid;
	DBMS_OUTPUT.PUT_LINE('Product ID:'||vtid);
	DBMS_OUTPUT.PUT_LINE('Product name:'||vtname);
	DBMS_OUTPUT.PUT_LINE('Product price:'||vtprice);
	DBMS_OUTPUT.PUT_LINE('Product ID location:'||vlname);
END;
/
BEGIN	
	test_2;
END;
/
EXECUTE test_2;
-- if errors can show errors by SHOW ERROR