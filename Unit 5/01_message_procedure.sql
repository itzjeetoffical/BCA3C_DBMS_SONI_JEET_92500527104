-- Name: Ausura Keshar
-- Enrollment No.: 92500527109
-- Program Name: Procedure Without Parameters to Display a Message

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE show_message AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Welcome to PL/SQL programming!');
END;
/

-- Calling the procedure using a separate PL/SQL block
BEGIN
    show_message;
END;
/

-- Calling the procedure directly at the SQL command line
EXEC show_message;
