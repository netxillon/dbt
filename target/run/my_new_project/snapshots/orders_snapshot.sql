
      
  
    

  create  table
    "sap_dev"."history"."orders_snapshot"
    
    
    
  as (
    

    select *,
        md5(coalesce(cast(user_id as varchar ), '')
         || '|' || coalesce(cast(order_date as varchar ), '')
        ) as dbt_scd_id,
        order_date as dbt_updated_at,
        order_date as dbt_valid_from,
        nullif(order_date, order_date) as dbt_valid_to
    from (
        



select * from "sap_dev"."standardised"."orders"

    ) sbq



  );
  
  