CREATE OR REPLACE PROCEDURE LAB8_Power2
IS 
--DECLARE
	y CONSTANT NUMBER := 2;
	num NUMBER(4) :=1;
BEGIN
	FOR x IN 1..10 
	LOOP
		num:= y*num;
		DBMS_OUTPUT.PUT_LINE(y||'^'||x||' = '||num);
	END LOOP;
END;
/

CREATE TABLE StudentScore  --delete data in studentscore
(
	ID		CHAR(11),
	Name	VARCHAR2(80),
	Mid		NUMBER(2),
	Final	NUMBER(2),
	Work	NUMBER(2)
);
INSERT INTO StudentScore(ID,NAME,Mid,Final,Work)
VALUES('553020621-7','สิทธิชัย สมทรัพย์',29,28,28);
INSERT INTO StudentScore(ID,NAME,Mid,Final,Work)
VALUES('555020270-4','พงษ์ศธร จันทร์ยอย',15,20,10);
INSERT INTO StudentScore(ID,NAME,Mid,Final,Work)
VALUES('603020296-7','นนทวัฒน์  ประทุมมา',30,27,15);

delete from studentscore;

CREATE OR REPLACE PROCEDURE LAB8_DBGrade 
IS 
--DECLARE
	vid		StudentScore.id%type;
	vname	StudentScore.name%type;
	vmid	StudentScore.mid%type;
	vfinal	StudentScore.final%type;
	vwork	StudentScore.work%type;
	vTotal	NUMBER(3);
	vgrad   CHAR(1);
BEGIN
	SELECT ID,NAME,Mid,Final,Work,(Mid+Final+Work)Total
	INTO vid,vname,vmid,vfinal,vwork,vTotal
	FROM StudentScore
	WHERE id = '603020296-7';
	DBMS_OUTPUT.PUT_LINE('Student ID :' ||vid);
	DBMS_OUTPUT.PUT_LINE('Name :' ||vname);
	DBMS_OUTPUT.PUT_LINE('Work score :' ||vwork);
	DBMS_OUTPUT.PUT_LINE('Midterm score :' ||vmid);
	DBMS_OUTPUT.PUT_LINE('Final score :' ||vfinal);
	DBMS_OUTPUT.PUT_LINE('Total score :' ||vTotal);
	IF(vTotal BETWEEN 80 AND 100) THEN
		vgrad := 'A';
	ELSIF (vTotal BETWEEN 70 AND 79) THEN
		vgrad := 'B';
	ELSIF (vTotal BETWEEN 60 AND 69) THEN
		vgrad := 'C';
	ELSIF (vTotal BETWEEN 50 AND 59) THEN
		vgrad := 'D';
	ELSIF (vTotal BETWEEN 0 AND 49) THEN
		vgrad := 'F';
	END IF;
	DBMS_OUTPUT.PUT_LINE('Getting grade is ' ||vgrad);
END;
/