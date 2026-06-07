
    select
      sum(coalesce(diff_count, 0)) as failures,
      sum(coalesce(diff_count, 0)) != 0 as should_warn,
      sum(coalesce(diff_count, 0)) != 0 as should_error
    from (
      
        select *
        from `analytics-take-home-test`.`monzo_james_2026_dbt_test__audit`.`dbt_utils_equal_rowcount_dim_a_d0c2a3fce27fea68de27149f9ac11ed7`
    
      
    ) dbt_internal_test