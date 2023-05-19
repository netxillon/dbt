

with source_customers_table as (
    select * from "sap_dev"."staging"."raw_customers"
),

final as (
    select *
    from source_customers_table
)

select * from final