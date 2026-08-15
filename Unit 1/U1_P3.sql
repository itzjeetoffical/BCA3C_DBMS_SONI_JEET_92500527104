-- PROGRAM 3: Calculate Discount
-- Name: Jeet Soni

SET SERVEROUTPUT ON;

DECLARE
    pname VARCHAR2(30);
    qty NUMBER;
    price NUMBER;
    discount_percent NUMBER;
    total NUMBER;
    discount NUMBER;
BEGIN
    pname := '&product_name';
    qty := &quantity;
    price := &price;
    discount_percent := &discount_percentage;

    total := qty * price;
    discount := total * discount_percent / 100;

    DBMS_OUTPUT.PUT_LINE('Product Name = ' || pname);
    DBMS_OUTPUT.PUT_LINE('Total Amount = ' || total);
    DBMS_OUTPUT.PUT_LINE('Discount = Rs. ' || discount);
END;
/
