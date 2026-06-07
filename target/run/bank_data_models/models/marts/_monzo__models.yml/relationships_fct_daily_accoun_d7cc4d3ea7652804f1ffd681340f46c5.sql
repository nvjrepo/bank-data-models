
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`relationships_fct_daily_accoun_d7cc4d3ea7652804f1ffd681340f46c5`
    
      
    ) dbt_internal_test