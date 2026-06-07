
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`dbt_utils_expression_is_true_d_15ea0b2e03d6888252d4fcf14b102d04`
    
      
    ) dbt_internal_test