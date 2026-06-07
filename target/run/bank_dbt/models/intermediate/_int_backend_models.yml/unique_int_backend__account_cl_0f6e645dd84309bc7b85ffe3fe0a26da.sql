
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`unique_int_backend__account_cl_0f6e645dd84309bc7b85ffe3fe0a26da`
    
      
    ) dbt_internal_test