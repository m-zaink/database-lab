-- union
    select *
    from indent i, section s
    where i.section_code(+) = s.section_code
UNION
    select *
    from indent i, section s
    where i.section_code = s.section_code(+);

-- intersection
    select *
    from cheque
INTERSECT
    select *
    from cheque;

-- except
    select *
    from item
    where unit_price > 50
EXCEPT
    select *
    from item
    where unit_price > 50;
