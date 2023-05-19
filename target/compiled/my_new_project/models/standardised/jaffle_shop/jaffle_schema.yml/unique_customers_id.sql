
    
    

select
    id as unique_field,
    count(*) as n_records

from "sap_dev"."standardised"."customers"
where id is not null
group by id
having count(*) > 1


