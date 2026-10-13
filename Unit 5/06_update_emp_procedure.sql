-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Procedure Without Parameters to Update EMP Table

SET SERVEROUTPUT ON;

-- This example gives a 5% salary increase to every employee.
-- Assumes EMP has a SAL column.
CREATE OR REPLACE PROCEDURE update_emp_salary AS
BEGIN
    UPDATE EMP
    SET SAL = SAL * 1.05;

    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) updated.');
END;
/

BEGIN
    update_emp_salary;
    COMMIT;
END;
/

-- Alternatively, call directly at the SQL command line:
-- EXEC update_emp_salary;
