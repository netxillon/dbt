with source_users_table as (
    select * from {{ source('source_table','users')}}
),

final as (
    select * from source_users_table
)

select * from final