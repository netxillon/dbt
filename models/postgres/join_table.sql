
with employee_salary as (
    select
	id as employee_id,
	first_name as firstName,
	hire_date as hireDate
    
    from {{ source('source_table','employee')}}
    group by 1
)

    select
  	salary.employee_id,
	salary.amount,
	employee_salary.firstName,
	employee_salary.hireDate

    from {{ source('source_table','salary')}}
    inner join employee_salary using (employee_id)
