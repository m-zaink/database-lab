-- ----------------
-- count function
select v.cheque_no, count(*)
from voucher v, cheque c
where v.cheque_no = c.cheque_no
group by v.cheque_no;

/*
OUTPUT :

 CHEQUE_NO   COUNT(*)
---------- ----------
      1234          3
      3214          2
*/

-- ----------------
-- min function
select min(c.cheque_amt)
from voucher v, cheque c
where v.cheque_no = c.cheque_no;

/*
OUTPUT : 

MIN(CHEQUE_AMT)
---------------
          576.7
*/

-- ----------------
-- max function
select max(c.cheque_amt)
from voucher v, cheque c
where v.cheque_no = c.cheque_no;

/*
OUTPUT : 

MAX(C.CHEQUE_AMT)
-----------------
            729.8
*/

-- ----------------
-- sum function
select sum(c.cheque_amt)
from voucher v, cheque c
where v.cheque_no = c.cheque_no;

/*
SUM(C.CHEQUE_AMT)
-----------------
           3189.7
*/

-- ----------------
-- avg function
select avg(c.cheque_amt)
from voucher v, cheque c
where v.cheque_no = c.cheque_no;

/*
AVG(C.CHEQUE_AMT)
-----------------
           637.94
*/
-- ----------------