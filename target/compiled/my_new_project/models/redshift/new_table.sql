with source_users_table as (
    select * from "sap_dev"."public"."users"
),

final as (
    select * from source_users_table
)

select * from final