-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Function to Return the Square of a Number

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION square_number(
    p_num IN NUMBER
) RETURN NUMBER AS
BEGIN
    RETURN p_num * p_num;
END;
/

-- Execute using a separate PL/SQL block
DECLARE
    v_num NUMBER := 5;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Square = ' || square_number(v_num));
END;
/

-- Execute directly at the SQL command line
SELECT square_number(5) AS square_result FROM DUAL;
