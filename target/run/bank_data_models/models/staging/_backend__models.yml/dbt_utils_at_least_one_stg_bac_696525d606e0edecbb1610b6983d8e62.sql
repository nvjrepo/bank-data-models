
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`dbt_utils_at_least_one_stg_bac_696525d606e0edecbb1610b6983d8e62`
    
      
    ) dbt_internal_test