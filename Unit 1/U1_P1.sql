-- PROGRAM 1: Calculate Simple Interest
-- Name: Jeet Soni

SET SERVEROUTPUT ON;

DECLARE
    p NUMBER;
    r NUMBER;
    y NUMBER;
    si NUMBER;
BEGIN
    p := &principal;
    r := &rate;
    y := &years;

    si := (p * r * y) / 100;

    DBMS_OUTPUT.PUT_LINE('Simple Interest = ' || si);
END;
/
