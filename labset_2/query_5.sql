-- left - outer join
select *
from indent i, section s
where i.section_code = s.section_code(+);

-- right - outer join
select *
from indent i, section s
where i.section_code(+) = s.section_code;

-- full - outer join
    select *
    from indent i, section s
    where i.section_code(+) = s.section_code
UNION
    select *
    from indent i, section s
    where i.section_code = s.section_code(+);