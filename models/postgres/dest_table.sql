
with source_employee_table as (
    select * from {{ source('source_table','employee')}}
),

final as (
    select * from source_employee_table
)

select * from final
