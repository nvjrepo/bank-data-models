







select *
from (
    with pruned_rows as (
      select
        account_closed_id
      from `analytics-take-home-test`.`monzo_james_2026`.`int_backend__account_closed__deduplicated`
      
        where account_closed_id is not null
        limit 1
      
    )
    select
        
        
      
      count(account_closed_id) as filler_column

    from pruned_rows

    

    having count(account_closed_id) = 0

) validation_errors

