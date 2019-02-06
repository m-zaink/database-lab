select item_code, item_desc, unit_price
from item where item_code in(
    select item_code from order_table
    where vendor_no = '1'
);

