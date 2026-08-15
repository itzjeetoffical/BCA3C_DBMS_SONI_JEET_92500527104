-- PROGRAM 5: Celsius to Fahrenheit
-- Name: Jeet Soni

SET SERVEROUTPUT ON;

DECLARE
    celsius NUMBER;
    fahrenheit NUMBER;
BEGIN
    celsius := &celsius;

    fahrenheit := (celsius * 9 / 5) + 32;

    DBMS_OUTPUT.PUT_LINE('Fahrenheit = ' || fahrenheit);
END;
/
