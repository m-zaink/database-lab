select i.item_code, count(*)
from item i, order_table o
where i.item_code = o.item_code
group by i.item_code;

/*
OUTPUT :

 ITEM_CODE   COUNT(*)
---------- ----------
         1          1
         2          1
         4          1
         3          2

*/