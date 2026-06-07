
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`dbt_utils_at_least_one_stg_bac_1067fcabb8917f875146e812dead189c`
    
      
    ) dbt_internal_test