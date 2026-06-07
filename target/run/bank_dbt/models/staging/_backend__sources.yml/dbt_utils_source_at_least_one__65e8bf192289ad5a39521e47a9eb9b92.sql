
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`dbt_utils_source_at_least_one__65e8bf192289ad5a39521e47a9eb9b92`
    
      
    ) dbt_internal_test