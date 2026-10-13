-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Search Employee ID and Return Employee Name Using IN and OUT Parameters

SET SERVEROUTPUT ON;

-- Assumes EMP has EMPNO and ENAME columns
CREATE OR REPLACE PROCEDURE search_employee_name(
    p_empno IN EMP.EMPNO%TYPE,
    p_ename OUT EMP.ENAME%TYPE
) AS
BEGIN
    SELECT ENAME INTO p_ename
    FROM EMP
    WHERE EMPNO = p_empno;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_ename := NULL;
        RAISE_APPLICATION_ERROR(-20001, 'Error: Employee ID not found.');
    WHEN TOO_MANY_ROWS THEN
        p_ename := NULL;
        RAISE_APPLICATION_ERROR(-20002, 'Error: More than one employee has this ID.');
END;
/

ACCEPT v_empno NUMBER PROMPT 'Enter employee ID: '

DECLARE
    v_ename EMP.ENAME%TYPE;
BEGIN
    search_employee_name(&v_empno, v_ename);
    DBMS_OUTPUT.PUT_LINE('Employee name: ' || v_ename);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
