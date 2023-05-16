select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "employees_database"."dbt_asingh"."dest_table"
where id is null



      
    ) dbt_internal_test