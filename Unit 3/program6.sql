/*
Name: Ausura Keshar
Program: 6
Description: Demonstration of NO_DATA_FOUND exception
*/

DECLARE
    v_name EMP.ENAME%TYPE;
BEGIN
    SELECT ENAME
    INTO v_name
    FROM EMP
    WHERE EMPNO = 9999;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO_DATA_FOUND: No employee record found.');
END;
/
