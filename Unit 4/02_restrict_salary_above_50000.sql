-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Restrict EMP Entries When Salary Is Greater Than Rs. 50000

CREATE OR REPLACE TRIGGER restrict_salary_50000
BEFORE INSERT OR UPDATE OF SAL ON EMP
FOR EACH ROW
BEGIN
    IF :NEW.SAL > 50000 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Entry rejected: Salary cannot be greater than Rs. 50000.');
    END IF;
END;
/

-- Test the trigger (this should fail if salary is above 50000)
INSERT INTO EMP (EMPNO, ENAME, JOB, HIREDATE, SAL, DEPTNO)
VALUES (9999, 'TESTUSER', 'CLERK', SYSDATE, 60000, 10);
