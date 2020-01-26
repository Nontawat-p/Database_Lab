DECLARE
	FOR x IN REVERSE 1..12 
	LOOP
		DBMS_OUTPUT.PUT_LINE(Y||'x'||X||' = '||Y*X);
	END LOOP;
BEGIN
	FOR x IN REVERSE 1..12 
	LOOP
		DBMS_OUTPUT.PUT_LINE(Y||'x'||X||' = '||Y*X);
	END LOOP;
END;
/
----------------------------------------------------------------
DECLARE
	y CONSTANT NUMBER := 12;
BEGIN
	FOR x IN 1..12 
	LOOP
		DBMS_OUTPUT.PUT_LINE(Y||'x'||X||' = '||Y*X);
	END LOOP;
END;
/
----------------------------------------------------------------
DECLARE
	x NUMBER := 0;
	y CONSTANT NUMBER := 12;
BEGIN
WHILE (x <=12)
LOOP
	X:= x+1;
	DBMS_OUTPUT.PUT_LINE(Y||'x'||X||' = '||Y*X);
END LOOP;
END;
/
----------------------------------------------------------------
DECLARE
	x NUMBER := 0;
	y CONSTANT NUMBER := 12;
BEGIN
	LOOP
	x:= x+1;
	DBMS_OUTPUT.PUT_LINE(Y||'x'||X||' = '||Y*X);
	EXIT WHEN x >= 12;
	END LOOP;
END;
/
-----------------------------------------------------------------
DECLARE
	score NUMBER(3) :=&score;
BEGIN
	IF score BETWEEN 80 AND 85 THEN -- between = since 
		DBMS_OUTPUT.PUT_LINE('Score : '||score||'Grade : A ' );
	ELSE
		DBMS_OUTPUT.PUT_LINE('Score : '||score||'Grade : F ' );
	END IF;
END;
/
--------------------------------------------------------------
DECLARE 
	status CHAR(1) :='&status';
BEGIN 
	IF status ='A' THEN
		DBMS_OUTPUT.PUT_LINE('Active student. ');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('Not active student.');
	END IF;
END;
/
------------------------------------------------------------------
SET SERVEROUTPUT ON

DECLARE 
	vcharge NUMBER(2) :=&charge;
BEGIN
	DBMS_OUTPUT.PUT_LINE('Service charge : '||vcharge||'%');
END;
/