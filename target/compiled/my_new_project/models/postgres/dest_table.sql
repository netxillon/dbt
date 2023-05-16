with source_employee_table as (
    select * from "employees_database"."employees"."employee"
),

final as (
    select * from source_employee_table
)

select * from final