
    
    

select
    id as unique_field,
    count(*) as n_records

from "employees_database"."dbt_asingh"."dest_table"
where id is not null
group by id
having count(*) > 1


