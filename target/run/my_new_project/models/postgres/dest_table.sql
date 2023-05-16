
  
    

  create  table "employees_database"."dbt_asingh"."dest_table__dbt_tmp"
  as (
    with source_employee_table as (
    select * from "employees_database"."employees"."employee"
),

final as (
    select * from source_employee_table
)

select * from final
  );
  