select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select "first_name"
from "employees_database"."dbt_asingh"."dest_table"
where "first_name" is null



      
    ) dbt_internal_test