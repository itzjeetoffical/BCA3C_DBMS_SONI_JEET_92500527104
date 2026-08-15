-- PROGRAM 8: Calculate Gross Salary
-- Name: Jeet Soni

SET SERVEROUTPUT ON;

CREATE TABLE EMP8
(
    EID NUMBER PRIMARY KEY,
    EName VARCHAR2(30),
    Deptno NUMBER,
    Deptname VARCHAR2(30),
    Gender VARCHAR2(10),
    Age NUMBER,
    BasicSal NUMBER
);

INSERT INTO EMP8 VALUES (101, 'RAHUL', 10, 'HR', 'Male', 25, 30000);
INSERT INTO EMP8 VALUES (102, 'AMIT', 20, 'SALES', 'Male', 28, 35000);
INSERT INTO EMP8 VALUES (103, 'NEHA', 10, 'HR', 'Female', 24, 32000);
INSERT INTO EMP8 VALUES (104, 'PRIYA', 30, 'IT', 'Female', 26, 40000);

COMMIT;

DECLARE
    id NUMBER;
    basic NUMBER;
    hra NUMBER;
    da NUMBER;
    medical NUMBER := 500;
    pf NUMBER;
    gross_salary NUMBER;
BEGIN
    id := &EID;

    SELECT BasicSal
    INTO basic
    FROM EMP8
    WHERE EID = id;

    hra := basic * 15 / 100;
    da := basic * 50 / 100;
    pf := basic * 10 / 100;

    gross_salary := basic + hra + da + medical - pf;

    DBMS_OUTPUT.PUT_LINE('Basic Salary = ' || basic);
    DBMS_OUTPUT.PUT_LINE('HRA = ' || hra);
    DBMS_OUTPUT.PUT_LINE('DA = ' || da);
    DBMS_OUTPUT.PUT_LINE('Medical = ' || medical);
    DBMS_OUTPUT.PUT_LINE('PF = ' || pf);
    DBMS_OUTPUT.PUT_LINE('Gross Salary = ' || gross_salary);
END;
/
