/*Altering table order_table by adding the foreigning key
to voucher_no of voucher*/
alter table order_table 
add voucher_no int;

alter table order_table 
add constraint 
order_voucher_fk foreign key(voucher_no) references voucher(voucher_no)
on delete set null;

insert into voucher
values(
        1,
        '12-JAN-2018',
        2,
        1234
);

update order_table
set voucher_no = 1 where order_no = 1;

update order_table
set voucher_no = 2 where order_no = 2;

update order_table
set voucher_no = 1 where order_no = 3;

update order_table
set voucher_no = 2 where order_no = 4;

update order_table
set voucher_no = 3 where order_no = 5;

/*Answer to 1*/
delete from voucher where voucher_no = 1;