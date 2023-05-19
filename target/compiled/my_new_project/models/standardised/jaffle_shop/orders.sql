with source_orders_table as (
    select * from "sap_dev"."staging"."raw_orders"
),

final as (
    select * from source_orders_table
)

select * from final