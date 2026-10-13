-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: SEARCH_EMP Procedure Using IN and OUT Parameters

SET SERVEROUTPUT ON;

-- Assumes EMP has EMPNO and ENAME columns.
CREATE OR REPLACE PROCEDURE SEARCH_EMP(
    p_empno IN EMP.EMPNO%TYPE,
    p_found OUT VARCHAR2
) AS
    v_ename EMP.ENAME%TYPE;
BEGIN
    SELECT ENAME INTO v_ename
    FROM EMP
    WHERE EMPNO = p_empno;

    p_found := 'Employee found: ' || v_ename;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_found := 'Employee number not found.';
    WHEN TOO_MANY_ROWS THEN
        p_found := 'Error: Multiple employees found for this number.';
END;
/

ACCEPT v_empno NUMBER PROMPT 'Enter employee number: '

DECLARE
    v_result VARCHAR2(200);
BEGIN
    SEARCH_EMP(&v_empno, v_result);
    DBMS_OUTPUT.PUT_LINE(v_result);
END;
/
