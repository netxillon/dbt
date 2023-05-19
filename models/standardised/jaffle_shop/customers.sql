{{
    config(
        materialized='incremental',
        unique_key='id',
        incremental_strategy='delete+insert',
        on_schema_change='fail'
    )
}}

with source_customers_table as (
    select * from {{ ref('raw_customers') }}
),

final as (
    select *
    from source_customers_table
)

select * from final