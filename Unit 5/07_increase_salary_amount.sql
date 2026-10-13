-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Increase Employee Salary by a Fixed Amount for a Department

SET SERVEROUTPUT ON;

-- Assumes EMP has DEPTNO and SAL columns.
-- p_amount is the fixed amount to add, not a percentage.
CREATE OR REPLACE PROCEDURE increase_salary_amount(
    p_deptno IN EMP.DEPTNO%TYPE,
    p_amount IN NUMBER
) AS
BEGIN
    UPDATE EMP
    SET SAL = SAL + p_amount
    WHERE DEPTNO = p_deptno;

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) updated.');
END;
/

ACCEPT v_deptno NUMBER PROMPT 'Enter department number: '
ACCEPT v_amount NUMBER PROMPT 'Enter fixed salary increase amount: '

BEGIN
    increase_salary_amount(&v_deptno, &v_amount);
    COMMIT;
END;
/
