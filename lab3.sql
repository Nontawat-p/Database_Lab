
UPDATE product SET amount = 12
WHERE pname LIKE 'ลูก%' or price > 100;

UPDATE product SET amount = 12
WHERE pname LIKE 'ลูก%' AND price > 100;

UPDATE table_name SET col=vall
WHERE condition1 AND/OR condition2;

UPDATE product SET amount=100
WHERE pname LIKE 'ลูก%';

UPDATE table_name SET col=vall
WHERE col_name op val/col;

ROLLBACK;

UPDATE product SET amount=12;

ALTER TABLE product
ADD(tid CHAR(3),
	CONSTRAINT pro_fk_type FOREIGN KEY(tid)
		REFERENCES ptype(tid)
);
ALTER TABLE table_name 
ADD(
	CONSTRAINT con_name FOREIGN KEY (col_FK)
		REFERENCES table_name2(col_PK)
);

SELECT CONSTRAINT NAME,CONSTRAINT_TYPE FROM
user_constrains;


DESC user_constrains;

ALTER TABLE product
ADD(
	CONSTRAINTS pro_pk PRIMARY KEY (pid)
);

ALTER TABLE table_name
ADD(CONSTRAINTS col_name PRIMARY KEY (col_PK));

ALTER TABLE product
ADD (amount NUMBER(3));

ALTER TABLE table_name;
ADD (col_name data_type);
