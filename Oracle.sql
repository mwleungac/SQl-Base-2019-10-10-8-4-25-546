CREATE TABLE STUDENT (
  ID VARCHAR2(3) NOT NULL,
  NAME VARCHAR2(32) NULL,
  AGE NUMBER NULL,
  SEX VARCHAR2(6) NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE SUBJECT (
  ID VARCHAR2(4) NOT NULL,
  SUBJECT VARCHAR2(32) NULL,
  TEACHER VARCHAR2(32) NULL,
  DESCRIPTION VARCHAR2(64) NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE SCORE (
  ID NUMBER NOT NULL,
  STUDENT_ID VARCHAR2(3) NULL,
  SUBJECT_ID VARCHAR2(4) NULL,
  SCORE NUMBER NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY(STUDENT_ID) REFERENCES STUDENT(ID),
  FOREIGN KEY(SUBJECT_ID) REFERENCES SUBJECT(ID)
);

INSERT INTO STUDENT ( ID, NAME, AGE, SEX ) VALUES ( '001', 'zhangsan', 18, 'male');
INSERT INTO STUDENT ( ID, NAME, AGE, SEX ) VALUES ( '002', 'lisi', 20, 'female');
INSERT INTO SUBJECT ( ID, SUBJECT, TEACHER, DESCRIPTION ) VALUES ( '1001', 'Chinese', 'Mr. Wang', 'the exam is easy');
INSERT INTO SUBJECT ( ID, SUBJECT, TEACHER, DESCRIPTION ) VALUES ( '1002', 'math', 'Miss Liu', 'the exam is difficult');
INSERT INTO SCORE ( ID, STUDENT_ID, SUBJECT_ID, SCORE ) VALUES ( '1', '001', '1001', 80);
INSERT INTO SCORE ( ID, STUDENT_ID, SUBJECT_ID, SCORE ) VALUES ( '2', '002', '1002', 60);
INSERT INTO SCORE ( ID, STUDENT_ID, SUBJECT_ID, SCORE ) VALUES ( '3', '001', '1001', 70);
INSERT INTO SCORE ( ID, STUDENT_ID, SUBJECT_ID, SCORE ) VALUES ( '4', '002', '1002', 60.5);
