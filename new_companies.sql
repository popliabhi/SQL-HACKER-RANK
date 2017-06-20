/*
Enter your query here.
*/


select cc.company_code, cc.founder, count(distinct lm.lead_manager_code) as lmc, count(distinct sm.senior_manager_code) as smc, count(distinct m.manager_code) as mc,count(distinct e.employee_code) as ec 
from Company cc, Lead_Manager lm, Senior_Manager sm , Manager m, Employee e
where 
cc.company_code=lm.company_code and 
lm.lead_manager_code=sm.lead_manager_code and
sm.senior_manager_code=m.senior_manager_code and 
m.manager_code=e.manager_code 

group by cc.company_code,cc.founder 
order by cc.company_code;