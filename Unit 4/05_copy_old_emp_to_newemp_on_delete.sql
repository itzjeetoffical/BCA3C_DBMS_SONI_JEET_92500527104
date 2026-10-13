-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Copy Existing EMP Values to NEWEMP When EMP Is Deleted

-- Assumes NEWEMP was created using Program 3.
CREATE OR REPLACE TRIGGER copy_emp_before_delete
BEFORE DELETE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
    VALUES (:OLD.EMPNO, :OLD.ENAME, :OLD.JOB, :OLD.MGR,
            :OLD.HIREDATE, :OLD.SAL, :OLD.COMM, :OLD.DEPTNO);
END;
/

-- Test the trigger (this deletes the test employee)
DELETE FROM EMP WHERE EMPNO = 9001;

-- Check the saved values in NEWEMP
SELECT * FROM NEWEMP WHERE EMPNO = 9001;
