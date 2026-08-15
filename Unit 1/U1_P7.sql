-- PROGRAM 7: Calculate Total, Percentage and Grade
-- Name: Jeet Soni

SET SERVEROUTPUT ON;

CREATE TABLE RESULT7
(
    Rollno NUMBER PRIMARY KEY,
    Name VARCHAR2(30),
    Sub1 NUMBER,
    Sub2 NUMBER,
    Sub3 NUMBER,
    Sub4 NUMBER,
    Sub5 NUMBER,
    Total NUMBER,
    Per NUMBER(5,2),
    Grade VARCHAR2(5)
);

INSERT INTO RESULT7 VALUES (1, 'RAHUL', 80, 75, 85, 70, 90, NULL, NULL, NULL);
INSERT INTO RESULT7 VALUES (2, 'AMIT', 65, 70, 60, 75, 68, NULL, NULL, NULL);
INSERT INTO RESULT7 VALUES (3, 'NEHA', 90, 85, 95, 88, 92, NULL, NULL, NULL);

COMMIT;

DECLARE
    r NUMBER;
    total_marks NUMBER;
    percentage NUMBER;
    grade VARCHAR2(5);
BEGIN
    r := &rollno;

    SELECT Sub1 + Sub2 + Sub3 + Sub4 + Sub5,
           (Sub1 + Sub2 + Sub3 + Sub4 + Sub5) / 5
    INTO total_marks, percentage
    FROM RESULT7
    WHERE Rollno = r;

    IF percentage >= 80 THEN
        grade := 'A';
    ELSIF percentage >= 60 THEN
        grade := 'B';
    ELSIF percentage >= 50 THEN
        grade := 'C';
    ELSIF percentage >= 40 THEN
        grade := 'D';
    ELSE
        grade := 'F';
    END IF;

    UPDATE RESULT7
    SET Total = total_marks,
        Per = percentage,
        Grade = grade
    WHERE Rollno = r;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Total = ' || total_marks);
    DBMS_OUTPUT.PUT_LINE('Percentage = ' || percentage);
    DBMS_OUTPUT.PUT_LINE('Grade = ' || grade);
END;
/
