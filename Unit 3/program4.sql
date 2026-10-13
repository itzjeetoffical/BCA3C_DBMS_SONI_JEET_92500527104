/*
Name: Ausura Keshar
Program: 4
Description: Display salary of employee whose age is 50
*/

DECLARE
    v_name EMP.ENAME%TYPE;
    v_salary EMP.SAL%TYPE;
BEGIN
    SELECT ENAME, SAL
    INTO v_name, v_salary
    FROM EMP
    WHERE AGE = 50;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found whose age is 50.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee is 50 years old.');
END;
/
