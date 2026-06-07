







select *
from (
    with pruned_rows as (
      select
        account_date_id
      from `analytics-take-home-test`.`monzo_james_2026`.`stg_backend__account_transactions`
      
        where account_date_id is not null
        limit 1
      
    )
    select
        
        
      
      count(account_date_id) as filler_column

    from pruned_rows

    

    having count(account_date_id) = 0

) validation_errors

