/*
Name: Ausura Keshar
Program: 5
Description: Insert department employees into EMP_BACKUP using cursor
*/

DECLARE
    v_deptno EMP.DEPTNO%TYPE := &dept_no;
    NO_DEPT_FOUND EXCEPTION;
    v_count NUMBER := 0;

    CURSOR c_emp IS
        SELECT *
        FROM EMP
        WHERE DEPTNO = v_deptno;

BEGIN
    FOR emp_record IN c_emp LOOP
        INSERT INTO EMP_BACKUP
        VALUES emp_record;

        v_count := v_count + 1;
    END LOOP;

    IF v_count = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    DBMS_OUTPUT.PUT_LINE(v_count || ' employee record(s) inserted into EMP_BACKUP.');

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO_DEPT_FOUND: No employees found for department ' || v_deptno || '.');
END;
/
