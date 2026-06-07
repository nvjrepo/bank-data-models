
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`dbt_utils_at_least_one_int_bac_18c8e92c4c5d708275d100cf6b681d93`
    
      
    ) dbt_internal_test