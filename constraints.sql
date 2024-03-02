/**Field constraints*/
/*
PRIMARY KEY
NOT NULL (不可是空白)
UNIQUE (不可重複)
DEFAULT(新增殖時，可以不設)
*/


DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR (20) NOT NULL,
	major VARCHAR(20) UNIQUE
 
);

SELECT * FROM student