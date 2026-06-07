







select *
from (
    with pruned_rows as (
      select
        account_id_hashed
      from `analytics-take-home-test`.`monzo_datawarehouse`.`account_reopened`
      
        where account_id_hashed is not null
        limit 1
      
    )
    select
        
        
      
      count(account_id_hashed) as filler_column

    from pruned_rows

    

    having count(account_id_hashed) = 0

) validation_errors

