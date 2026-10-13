/*
Name: Ausura Keshar
Program: 8
Description: Demonstration of ZERO_DIVIDE exception
*/

DECLARE
    a NUMBER := 10;
    b NUMBER := 0;
    result NUMBER;
BEGIN
    result := a / b;

    DBMS_OUTPUT.PUT_LINE('Result: ' || result);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('ZERO_DIVIDE: Cannot divide by zero.');
END;
/
