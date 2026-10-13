-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Function to Return Account Balance by Account Number

SET SERVEROUTPUT ON;

-- This program uses the ACCOUNT table created in Program 5.
-- Run Program 5 first if the ACCOUNT table and function do not exist.
CREATE OR REPLACE FUNCTION get_account_balance(
    p_acno IN ACCOUNT.ACNO%TYPE
) RETURN ACCOUNT.BALANCE%TYPE AS
    v_balance ACCOUNT.BALANCE%TYPE;
BEGIN
    SELECT BALANCE INTO v_balance
    FROM ACCOUNT
    WHERE ACNO = p_acno;

    RETURN v_balance;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20003, 'Error: Account number not found.');
END;
/

-- Execute using a PL/SQL block
BEGIN
    DBMS_OUTPUT.PUT_LINE('Balance = ' || get_account_balance(1002));
END;
/

-- Execute directly at the SQL command line
SELECT get_account_balance(1002) AS account_balance FROM DUAL;
