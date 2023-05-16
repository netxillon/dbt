
  
    

  create  table "employees_database"."dbt_asingh"."join_table__dbt_tmp"
  as (
    with employee_salary as (
    select
	id as employee_id,
	first_name as firstName,
	hire_date as hireDate
    
    from "employees_database"."employees"."employee"
    group by 1
)

    select
  	salary.employee_id,
	salary.amount,
	employee_salary.firstName,
	employee_salary.hireDate

    from "employees_database"."employees"."salary"
    inner join employee_salary using (employee_id)
  );
  