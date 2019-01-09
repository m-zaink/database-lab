/*Query 3*/
update item set unit_price = 0.99*unit_price;

/*Query 4*/
alter table item add constraint chq_unit_price check(unit_price >= 0);