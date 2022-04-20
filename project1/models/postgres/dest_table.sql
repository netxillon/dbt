{% if target.name == 'dev' %}
  -- just make a view that points to the prod model
  {{ config(materialized='view') }}
{% endif %}

with source_employee_table as (
    select * from {{ source('source_table','employee')}}
),

final as (
    select * from source_employee_table
)

select * from final
