/*
Name: Ausura Keshar
Program: 7
Description: Demonstration of INVALID_NUMBER exception
*/

DECLARE
    v_num NUMBER;
BEGIN
    v_num := TO_NUMBER('ABC');

    DBMS_OUTPUT.PUT_LINE('Number: ' || v_num);

EXCEPTION
    WHEN INVALID_NUMBER THEN
        DBMS_OUTPUT.PUT_LINE('INVALID_NUMBER: Invalid number format.');
END;
/
