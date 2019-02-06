CREATE OR REPLACE PROCEDURE PI(var_order_no int)
IS
CURSOR AI IS 
    SELECT order_table.order_no, ordering.item_code
    FROM order_table, ordering
    WHERE order_table.order_no = var_order_no AND
        order_table.order_no = ordering.order_no;

C1 order_table.order_no%TYPE;
C2 ordering.item_code%TYPE;
BEGIN
OPEN AI;
fetch AI into C1, C2;
LOOP EXIT WHEN AI%NOTFOUND;
    fetch AI into C1, C2;
    DBMS_OUTPUT.PUT_LINE('ORDER NO'|| C1 ||'ITEM_NO'||C2);
END LOOP;
CLOSE AI;
END;
/