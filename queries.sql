<<<<<<< HEAD
/*Query 3*/
update item set unit_price = 0.99*unit_price;

/*Query 4*/
=======
/*Query 3*/
update item set unit_price = 0.99*unit_price;

/*Query 4*/
>>>>>>> 5bdecd80c5337bb095da55df574e261603e55387
alter table item add constraint chq_unit_price check(unit_price >= 0);