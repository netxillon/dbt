{% snapshot customers_snapshot %}

{{
    config(
      target_schema='history',
      unique_key='id',

      strategy='check',
      check_cols=['first_name','last_name'],
    )
}}

select * from {{ ref('raw_customers') }}

{% endsnapshot %}