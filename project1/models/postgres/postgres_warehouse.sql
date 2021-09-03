with wh_users as (
    select * from {{ source('source_table','employee')}}
),

final as (
    select * from wh_users
)

select * from final
