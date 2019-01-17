/*Item table creation*/
create table item
(
    item_code int not null,
    item_desc varchar(20) not null,
    unit_price number(5, 2),
    eoq int,
    rol int,
    soh int,
    back_order_qty int,
    constraint pk_item primary key(item_code)
);

/*Order table creation*/
create table order_table
(
    order_no int not null,
    item_code int,
    qty_rec int,
    constraint pk_order primary key(order_no),
    constraint fk_order_item foreign key(item_code) references item(item_code) on delete set null
);

/*Vendor table creation*/
create table vendor
(
    vendor_no int not null,
    vendor_name varchar(10),
    vendor_addr varchar(10),
    constraint pk_vendor primary key(vendor_no)
);

/*Section table creation*/
create table section
(
    section_code int not null,
    section_name varchar(10),
    constraint pk_section primary key(section_code)
);

/*Indent table creation*/
create table indent
(
    indent_no int not null,
    qty_dmd int,
    qty_issued int,
    section_code int,
    item_code int,
    constraint pk_indent primary key(indent_no),
    constraint fk_indent_item foreign key(item_code) references item(item_code) on delete set null,
    constraint fk_indent_section foreign key(section_code) references section(section_code) on delete set null
);

/*Cheque table creation*/
create table cheque
(
    cheque_no int not null,
    cheque_date date,
    cheque_amt number(5, 2),
    constraint pk_cheque primary key(cheque_no)
);

/*Voucher table creation*/
create table voucher
(
    voucher_no int not null,
    voucher_date date,
    vender_no int,
    cheque_no int,
    constraint pk_voucher primary key(voucher_no),
    constraint fk_voucher_vender foreign key(vender_no) references vendor(vender_no) on delete set null,
    constraint fk_voucher_cheque foreign key(cheque_no) references cheque(cheque_no) on delete set null
);

/*Ordering relation creation*/
create table ordering
(
    order_no int,
    item_code int,
    qty_rec int,
    constraint pk_ordering primary key(order_no, item_code),
    constraint fk_ordering_order_table foreign key(order_no) references order_table(order_no) on delete set null,
    constraint fk_ordering_item foreign key(item_code) references item(item_code) on delete set null
);

