
    
    

with dbt_test__target as (

  select account_id as unique_field
  from `analytics-take-home-test`.`monzo_james_2026`.`dim_accounts`
  where account_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


