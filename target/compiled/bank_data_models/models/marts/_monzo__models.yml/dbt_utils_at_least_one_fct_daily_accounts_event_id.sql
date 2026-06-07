







select *
from (
    with pruned_rows as (
      select
        event_id
      from `analytics-take-home-test`.`monzo_james_2026`.`fct_daily_accounts`
      
        where event_id is not null
        limit 1
      
    )
    select
        
        
      
      count(event_id) as filler_column

    from pruned_rows

    

    having count(event_id) = 0

) validation_errors

