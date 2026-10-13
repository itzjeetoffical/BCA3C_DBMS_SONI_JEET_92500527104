/*
Name: Ausura Keshar
Program: 2
Description: Display student result using exception handling
*/

DECLARE
    v_name RESULT.NAME%TYPE;
    v_rollno RESULT.ROLLNO%TYPE;
    v_total RESULT.TOTAL%TYPE;
    v_per RESULT.PER%TYPE;
    v_grade RESULT.GRADE%TYPE;
BEGIN
    v_name := '&student_name';

    SELECT ROLLNO, NAME, TOTAL, PER, GRADE
    INTO v_rollno, v_name, v_total, v_per, v_grade
    FROM RESULT
    WHERE UPPER(NAME) = UPPER(v_name);

    DBMS_OUTPUT.PUT_LINE('Roll No: ' || v_rollno);
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Total: ' || v_total);
    DBMS_OUTPUT.PUT_LINE('Percentage: ' || v_per);
    DBMS_OUTPUT.PUT_LINE('Grade: ' || v_grade);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student not found in RESULT table.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one student found with this name.');
END;
/
