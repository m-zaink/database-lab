create or replace procedure p2(itemcode int, v_no int)
is
cursor a2 is
    select count(*) as no_of_orders from ordering o2, order_table o1, indent i
    where o2.order_no = o1.order_no and
    o2.item_code = i.item_code and 
    o1.vendor_no = v_no and 
    i.item_code = itemcode;

qty indent.qty_dmd%type;

begin
    open a2;
    fetch a2 into qty;
    loop exit when a2%NOTFOUND;
        dbms_output.put_line('no of order = '||qty);
        -- dbms_output.put_line('see this = > '||qty;)
        fetch a2 into qty;
    end loop;
    close a2;
end;
/