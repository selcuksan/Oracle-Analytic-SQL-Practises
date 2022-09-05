select department_id, job_id, manager_id, (select avg(salary) from hr.employees e2 
                                            where e1.department_id = e2.department_id) 
from hr.employees e1 


select employee_id, last_name,  
        (case when department_id = (select department_id from hr.departments 
                                    where location_id = 1800) 
        then 'Canada' else 'USA' end) location 
from hr.employees

select first_name, salary, 
 (select max(salary) from hr.employees e2 where e2.department_id = e1.department_id) 
from hr.employees e1

select first_name, salary,department_id, 
 (select max(salary) from hr.employees e2 where e2.department_id = e1.department_id) 
from hr.employees e1


select first_name, salary,department_id  
from hr.employees e1 
where salary > (select avg(salary) from hr.employees e2 
                    where e1.department_id = e2.department_id)
                    

select first_name, salary,department_id, (select avg(salary) from hr.employees e2 
                    where e1.department_id = e2.department_id) avg_salary 
from hr.employees e1 
where salary > (select avg(salary) from hr.employees e2 
                    where e1.department_id = e2.department_id)

select first_name, salary,department_id, round((select avg(salary)  
                    from hr.employees e2 
                    where e1.department_id = e2.department_id)) avg_salary 
from hr.employees e1 
where salary < (select avg(salary)  
                from hr.employees e2 
                where e1.department_id = e2.department_id)
