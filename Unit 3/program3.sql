/*
Name: Ausura Keshar
Program: 3
Description: Display employee basic salary using exception handling
*/

DECLARE
    v_name EMP.ENAME%TYPE;
    v_salary EMP.SAL%TYPE;
BEGIN
    v_name := '&employee_name';

    SELECT SAL
    INTO v_salary
    FROM EMP
    WHERE UPPER(ENAME) = UPPER(v_name);

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Basic Salary: ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee found with this name.');
END;
/
