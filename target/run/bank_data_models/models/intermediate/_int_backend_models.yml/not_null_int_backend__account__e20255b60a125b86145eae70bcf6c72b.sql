
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`not_null_int_backend__account__e20255b60a125b86145eae70bcf6c72b`
    
      
    ) dbt_internal_test