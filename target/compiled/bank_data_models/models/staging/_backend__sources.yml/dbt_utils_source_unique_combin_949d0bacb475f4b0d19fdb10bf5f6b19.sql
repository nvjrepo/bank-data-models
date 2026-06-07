





with validation_errors as (

    select
        account_id_hashed, date
    from `analytics-take-home-test`.`monzo_datawarehouse`.`account_transactions`
    group by account_id_hashed, date
    having count(*) > 1

)

select *
from validation_errors


