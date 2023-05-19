
      
        
            delete from "sap_dev"."standardised"."customers"
            where (
                id) in (
                select (id)
                from "customers__dbt_tmp061449154678"
            );

        
    

    insert into "sap_dev"."standardised"."customers" ("id", "first_name", "last_name")
    (
        select "id", "first_name", "last_name"
        from "customers__dbt_tmp061449154678"
    )
  