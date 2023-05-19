
      update "sap_dev"."history"."customers_snapshot"
    set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to
    from "customers_snapshot__dbt_tmp061453641127" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_scd_id::text = "sap_dev"."history"."customers_snapshot".dbt_scd_id::text
      and DBT_INTERNAL_SOURCE.dbt_change_type::text in ('update'::text, 'delete'::text)
      and "sap_dev"."history"."customers_snapshot".dbt_valid_to is null;

    insert into "sap_dev"."history"."customers_snapshot" ("id", "first_name", "last_name", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id")
    select DBT_INTERNAL_SOURCE."id",DBT_INTERNAL_SOURCE."first_name",DBT_INTERNAL_SOURCE."last_name",DBT_INTERNAL_SOURCE."dbt_updated_at",DBT_INTERNAL_SOURCE."dbt_valid_from",DBT_INTERNAL_SOURCE."dbt_valid_to",DBT_INTERNAL_SOURCE."dbt_scd_id"
    from "customers_snapshot__dbt_tmp061453641127" as DBT_INTERNAL_SOURCE
    where DBT_INTERNAL_SOURCE.dbt_change_type::text = 'insert'::text;


  