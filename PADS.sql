
select case
when Occupation='Doctor' then concat(Name,'(D)')
when Occupation='Actor' then concat(Name,'(A)')
when Occupation='Singer' then concat(Name,'(S)')
when Occupation='Professor' then concat(Name,'(P)')
end
 from OCCUPATIONS order by Name ASC;


/*select * from OCCUPATIONS;*/

select case 
when Occupation='Doctor' then concat('There are a total of ',count(*),' doctors.')
when Occupation='Actor' then concat('There are a total of ',count(*),' actors.')
when Occupation='Singer' then concat('There are a total of ',count(*),' singers.')
when Occupation='Professor' then concat('There are a total of ',count(*),' professors.')
end
from OCCUPATIONS group by Occupation order by count(*), Occupation;
