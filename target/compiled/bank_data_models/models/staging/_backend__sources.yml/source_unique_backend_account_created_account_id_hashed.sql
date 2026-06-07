
    
    

with dbt_test__target as (

  select account_id_hashed as unique_field
  from `analytics-take-home-test`.`monzo_datawarehouse`.`account_created`
  where account_id_hashed is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


