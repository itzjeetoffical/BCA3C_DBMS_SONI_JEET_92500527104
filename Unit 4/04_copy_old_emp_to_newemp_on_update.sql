-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Copy Existing EMP Values to NEWEMP When EMP Is Updated

-- Assumes NEWEMP was created using Program 3.
CREATE OR REPLACE TRIGGER copy_emp_before_update
BEFORE UPDATE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
    VALUES (:OLD.EMPNO, :OLD.ENAME, :OLD.JOB, :OLD.MGR,
            :OLD.HIREDATE, :OLD.SAL, :OLD.COMM, :OLD.DEPTNO);
END;
/

-- Test the trigger
UPDATE EMP SET SAL = SAL + 500 WHERE EMPNO = 9001;

-- Check saved old values in NEWEMP
SELECT * FROM NEWEMP WHERE EMPNO = 9001;
