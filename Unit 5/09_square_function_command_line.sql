-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Square Function Executed Using PL/SQL Block and Command Line

SET SERVEROUTPUT ON;

CREATE OR REPLACE FUNCTION square_number(
    p_num IN NUMBER
) RETURN NUMBER AS
BEGIN
    RETURN p_num * p_num;
END;
/

-- Using a separate PL/SQL block
BEGIN
    DBMS_OUTPUT.PUT_LINE('Square = ' || square_number(8));
END;
/

-- Without a PL/SQL block, using a SQL command
SELECT square_number(8) AS square_result FROM DUAL;
