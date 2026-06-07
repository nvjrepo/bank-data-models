
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`dbt_utils_source_at_least_one__73c9f86b3dcb2ad821d2d43f475bcd86`
    
      
    ) dbt_internal_test