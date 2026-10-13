-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Create ACCOUNT Table and Return Balance for an Account Number

SET SERVEROUTPUT ON;

CREATE TABLE ACCOUNT (
    ACNO NUMBER(10) PRIMARY KEY,
    CNAME VARCHAR2(50),
    BNAME VARCHAR2(50),
    BALANCE NUMBER(12,2)
);

INSERT INTO ACCOUNT (ACNO, CNAME, BNAME, BALANCE)
VALUES (1001, 'Amit', 'State Bank', 25000.00);

INSERT INTO ACCOUNT (ACNO, CNAME, BNAME, BALANCE)
VALUES (1002, 'Neha', 'National Bank', 18750.50);

COMMIT;

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
    DBMS_OUTPUT.PUT_LINE('Balance = ' || get_account_balance(1001));
END;
/

-- Execute directly at the SQL command line
SELECT get_account_balance(1001) AS account_balance FROM DUAL;
