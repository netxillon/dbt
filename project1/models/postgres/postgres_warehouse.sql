with wh_users as (
    select * from {{ source('mywarehousesource','employee')}}
),

final as (
    select * from wh_users
)

select * from final
