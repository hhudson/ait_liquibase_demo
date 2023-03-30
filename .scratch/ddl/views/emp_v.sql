-- create views
create or replace view emp_v as 
select 
    departments.id                                     department_id,
    departments.name                                   department_name,
    departments.location                               location,
    departments.country                                country,
    employees.id                                       employee_id,
    employees.name                                     employee_name,
    employees.email                                    email,
    employees.cost_center                              cost_center,
    employees.date_hired                               date_hired,
    employees.job                                      job
from 
    departments,
    employees
where
    employees.department_id(+) = departments.id
/
