-- PROGRAM 2: Calculate Square and Cube
-- Name: Jeet Soni

SET SERVEROUTPUT ON;

DECLARE
    n NUMBER;
BEGIN
    n := &number;

    DBMS_OUTPUT.PUT_LINE('Square = ' || (n * n));
    DBMS_OUTPUT.PUT_LINE('Cube = ' || (n * n * n));
END;
/
