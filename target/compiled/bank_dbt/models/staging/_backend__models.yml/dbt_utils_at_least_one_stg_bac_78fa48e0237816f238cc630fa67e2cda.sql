







select *
from (
    with pruned_rows as (
      select
        account_id
      from `analytics-take-home-test`.`monzo_james_2026`.`stg_backend__account_reopening`
      
        where account_id is not null
        limit 1
      
    )
    select
        
        
      
      count(account_id) as filler_column

    from pruned_rows

    

    having count(account_id) = 0

) validation_errors

