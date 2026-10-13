-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Increase Employee Basic Salary by Percentage for a Department

SET SERVEROUTPUT ON;

-- Assumes EMP has DEPTNO and SAL columns
CREATE OR REPLACE PROCEDURE increase_salary_pct(
    p_deptno IN EMP.DEPTNO%TYPE,
    p_percent IN NUMBER
) AS
BEGIN
    UPDATE EMP
    SET SAL = SAL + (SAL * p_percent / 100)
    WHERE DEPTNO = p_deptno;

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) updated.');
END;
/

-- Enter the department number and percentage when prompted
ACCEPT v_deptno NUMBER PROMPT 'Enter department number: '
ACCEPT v_percent NUMBER PROMPT 'Enter salary increase percentage: '

BEGIN
    increase_salary_pct(&v_deptno, &v_percent);
    COMMIT;
END;
/
