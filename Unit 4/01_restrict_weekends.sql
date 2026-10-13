-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Restrict EMP Table Changes on Weekends

CREATE OR REPLACE TRIGGER restrict_emp_weekends
BEFORE INSERT OR UPDATE OR DELETE ON EMP
BEGIN
    IF TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') IN ('SAT', 'SUN') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Access denied: EMP table cannot be modified on weekends.');
    END IF;
END;
/

-- Test the trigger
UPDATE EMP SET SAL = SAL + 100 WHERE EMPNO = 7369;
