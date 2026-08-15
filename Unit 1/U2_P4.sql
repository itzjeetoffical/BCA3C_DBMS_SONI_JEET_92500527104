-- PROGRAM 4: Convert Feet to CM, Inch and Meter
-- Name: Jeet Soni

SET SERVEROUTPUT ON;

DECLARE
    feet NUMBER;
BEGIN
    feet := &feet;

    DBMS_OUTPUT.PUT_LINE('Centimeter = ' || (feet * 30.48));
    DBMS_OUTPUT.PUT_LINE('Inch = ' || (feet * 12));
    DBMS_OUTPUT.PUT_LINE('Meter = ' || (feet * 0.3048));
END;
/
