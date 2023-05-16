with source_users_table as (
    select * from {{ source('redshift_tables','users')}}
),

final as (
    select * from source_users_table
)

select * from final